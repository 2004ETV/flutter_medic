import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/repositories/analyzes/domain/models/analyze_domain.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/cart/cart_bloc.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/details/analyzes_details_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AnalyzeDetailsBottomSheet extends StatelessWidget {
  const AnalyzeDetailsBottomSheet({
    super.key,
    required this.model,
  });

  final AnalyzeDomain model;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      snap: true,
      builder: (context, scrollController) {
        return CustomScrollView(
          controller: scrollController,
          slivers: [
            BlocBuilder<AnalyzesDetailsBloc, AnalyzesDetailsState>(
              bloc: context.read<AnalyzesDetailsBloc>()
                ..add(AnalyzesDetailsEvent.load(id: model.id)),
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (state) {
                    return MultiSliver(
                      children: [
                        Text(
                          state.analyze.name,
                          style: AppTypography.sfProDisplaySemiBold20,
                        ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
                        const SliverGap(20),
                        Text(
                          'Описание'.hardcoded,
                          style: AppTypography.sfProDisplayMedium16.copyWith(
                            color: Colors.black.withOpacity(.4),
                          ),
                        ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
                        const SliverGap(8),
                        Text(
                          state.analyze.description,
                          style: AppTypography.sfProDisplayRegular15,
                        ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
                        const SliverGap(20),
                        Text(
                          'Подготовка'.hardcoded,
                          style: AppTypography.sfProDisplayMedium16.copyWith(
                            color: Colors.black.withOpacity(.4),
                          ),
                        ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
                        const SliverGap(8),
                        Text(
                          state.analyze.preparation,
                          style: AppTypography.sfProDisplayRegular15,
                        ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
                        const SliverGap(24),
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Результаты через:'.hardcoded,
                                          style: AppTypography
                                              .sfProDisplaySemiBold14
                                              .copyWith(
                                            color: Colors.black.withOpacity(.4),
                                          ),
                                        ),
                                        const Gap(4),
                                        Text(
                                          state.analyze.timeResult,
                                          style: AppTypography
                                              .sfProDisplayMedium16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Биоматериал:'.hardcoded,
                                          style: AppTypography
                                              .sfProDisplaySemiBold14
                                              .copyWith(
                                            color: Colors.black.withOpacity(.4),
                                          ),
                                        ),
                                        const Gap(4),
                                        Text(
                                          state.analyze.bio,
                                          style: AppTypography
                                              .sfProDisplayMedium16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ).paddingSymmetric(horizontal: 20),
                              const Gap(20),
                              BlocBuilder<CartBloc, CartState>(
                                builder: (context, cartState) {
                                  final isSelected = cartState.maybeMap(
                                    loaded: (state) => state.items
                                        .where(
                                          (element) => element.id == model.id,
                                        )
                                        .isNotEmpty,
                                    orElse: () => false,
                                  );

                                  return ElevatedButton(
                                    style: ButtonStyle(
                                      textStyle: const MaterialStatePropertyAll(
                                        AppTypography.sfProDisplaySemiBold16,
                                      ),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      backgroundColor: MaterialStatePropertyAll(
                                        isSelected
                                            ? Colors.white
                                            : AppColors.blueCrayola,
                                      ),
                                      foregroundColor: MaterialStatePropertyAll(
                                        isSelected
                                            ? AppColors.blueCrayola
                                            : Colors.white,
                                      ),
                                      side: MaterialStatePropertyAll(
                                        isSelected
                                            ? const BorderSide(
                                                color: AppColors.blueCrayola,
                                              )
                                            : null,
                                      ),
                                    ),
                                    onPressed: isSelected
                                        ? () => context.read<CartBloc>().add(
                                              CartEvent.deleteByIndex(
                                                index: model.id,
                                              ),
                                            )
                                        : () => context.read<CartBloc>().add(
                                              CartEvent.add(
                                                entity: CartEntity(
                                                  id: model.id,
                                                  title: model.name,
                                                  price: model.price,
                                                ),
                                              ),
                                            ),
                                    child: Text(
                                      isSelected
                                          ? 'Убрать'.hardcoded
                                          : 'Добавить за ${model.price}'.hardcoded,
                                    ).paddingSymmetric(
                                      vertical: 16,
                                    ),
                                  );
                                },
                              ).paddingSymmetric(horizontal: 20),
                              const Gap(24),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  error: (state) {
                    return SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: Text(state.error.toString()),
                      ),
                    );
                  },
                  orElse: () {
                    return const SliverFillRemaining(
                      hasScrollBody: false,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
