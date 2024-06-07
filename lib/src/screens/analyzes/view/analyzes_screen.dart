import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_elevated_button.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository.dart';
import 'package:flutter_medic/src/repositories/local_database/data/local_database_repository.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/cart/cart_bloc.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/details/analyzes_details_bloc.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/list/analyzes_list_bloc.dart';
import 'package:flutter_medic/src/screens/analyzes/models/category_enum.dart';
import 'package:flutter_medic/src/screens/analyzes/view/widgets/analyze_card.dart';
import 'package:flutter_medic/src/screens/analyzes/view/widgets/analyze_details_bottom_sheet.dart';
import 'package:flutter_medic/src/screens/analyzes/view/widgets/category_chip.dart';
import 'package:gap/gap.dart';

@RoutePage()
class AnalyzesScreen extends StatefulWidget implements AutoRouteWrapper {
  const AnalyzesScreen({super.key});

  @override
  State<AnalyzesScreen> createState() => _AnalyzesScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AnalyzesListBloc>(
          create: (context) => AnalyzesListBloc(
            analyzesRepository: context.read<AnalyzesRepository>(),
          ),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(
            localDatabaseRepository: context.read<LocalDatabaseRepository>(),
          ),
        ),
      ],
      child: this,
    );
  }
}

class _AnalyzesScreenState extends State<AnalyzesScreen> {
  String? _selectedCategory = AnalyzesCategories.all.name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          final completer = Completer();

          context.read<AnalyzesListBloc>().add(
                LoadAnalyzesEvent(
                  completer: completer,
                  category: _selectedCategory ?? AnalyzesCategories.all.name,
                ),
              );

          return completer.future;
        },
        child: CustomScrollView(
          slivers: [
            const SizedBox().sliverToBox.sliverSafeArea(bottom: false),
            const SliverGap(24),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: 'Искать анализы'.hardcoded,
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(32),
            Text(
              'Акции и новости'.hardcoded,
              style: AppTypography.sfProDisplaySemiBold17.copyWith(
                color: Colors.black.withOpacity(.4),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 20),
            const SliverGap(16),
            SizedBox(
              height: 160,
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.medium,
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://i.natgeofe.com/k/63b1a8a7'
                          '-0081-493e-8b53-81d01261ab5d/red-panda'
                          '-full-body_4x3.jpg',
                        ),
                      ),
                    ),
                  ).paddingSymmetric(horizontal: 20);
                },
              ),
            ).sliverToBox,
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              elevation: 0,
              toolbarHeight: 106,
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Каталог анализов'.hardcoded,
                    style: AppTypography.sfProDisplaySemiBold17.copyWith(
                      color: Colors.black.withOpacity(.4),
                    ),
                  ).paddingSymmetric(horizontal: 20),
                  const Gap(16),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryChip(
                          label: AnalyzesCategories.values[index].title,
                          isSelected: _selectedCategory ==
                              AnalyzesCategories.values[index].name,
                          onSelected: (value) {
                            setState(() {
                              if (_selectedCategory ==
                                  AnalyzesCategories.values[index].name) {
                                _selectedCategory = null;
                                return;
                              }

                              _selectedCategory =
                                  AnalyzesCategories.values[index].name;

                              context.read<AnalyzesListBloc>().add(
                                    FilterAnalyzesEvent(
                                      category: _selectedCategory ??
                                          AnalyzesCategories.all.name,
                                    ),
                                  );
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Gap(16);
                      },
                      itemCount: AnalyzesCategories.values.length,
                    ),
                  ),
                  const Gap(16),
                ],
              ).safeArea(bottom: false),
            ),
            BlocBuilder<AnalyzesListBloc, AnalyzesListState>(
              bloc: context.read<AnalyzesListBloc>()
                ..add(
                  LoadAnalyzesEvent(
                    completer: null,
                    category: _selectedCategory ?? AnalyzesCategories.all.name,
                  ),
                ),
              builder: (context, state) {
                if (state is AnalyzesListLoadedState) {
                  return SliverList.separated(
                    itemCount: state.analyzes.length,
                    itemBuilder: (context, index) {
                      final analyze = state.analyzes[index];
                      return AnalyzeCard(
                        onPressed: () => context.read<CartBloc>().add(
                              CartEvent.add(
                                entity: CartEntity(
                                  id: analyze.id,
                                  title: analyze.name,
                                  price: analyze.price,
                                ),
                              ),
                            ),
                        onDelete: () => context.read<CartBloc>().add(
                              CartEvent.deleteByIndex(
                                index: analyze.id,
                              ),
                            ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            useSafeArea: true,
                            isScrollControlled: true,
                            showDragHandle: true,
                            elevation: 0,
                            backgroundColor: Colors.white,
                            builder: (innerContext) {
                              return MultiBlocProvider(
                                providers: [
                                  BlocProvider<AnalyzesDetailsBloc>(
                                    create: (context) => AnalyzesDetailsBloc(
                                      analyzesRepository:
                                          context.read<AnalyzesRepository>(),
                                    ),
                                  ),
                                  BlocProvider.value(
                                    value: context.read<CartBloc>(),
                                  ),
                                ],
                                child: AnalyzeDetailsBottomSheet(
                                  model: state.analyzes[index],
                                ),
                              );
                            },
                          );
                        },
                        model: analyze,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Gap(16);
                    },
                  )
                      .sliverPaddingSymmetric(horizontal: 20)
                      .sliverPaddingOnly(bottom: 24);
                }

                if (state is AnalyzesListErrorState) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(state.error.toString()),
                    ),
                  );
                }

                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
        bloc: context.read<CartBloc>()..add(const CartEvent.load()),
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              if (state.items.isEmpty) {
                return const SizedBox();
              }

              return Container(
                height: 105,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: .5,
                    ),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: PrimaryElevatedButton(
                  onPressed: () => CartRoute(
                    cartBloc: context.read<CartBloc>(),
                  ).push(context),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      const Gap(16),
                      const Text('В корзину'),
                      const Spacer(),
                      Text(
                        '${state.items.fold<double>(
                          0,
                          (previousValue, element) =>
                              previousValue +
                              (double.tryParse(element.price) ?? 0.0),
                        )} ₽',
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
