import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/common/extensions/widget_extensions.dart';
import 'package:flutter_medic/src/common/widgets/primary_elevated_button.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';
import 'package:flutter_medic/src/database/cart/cart_entity.dart';
import 'package:flutter_medic/src/screens/analyzes/bloc/cart/cart_bloc.dart';
import 'package:flutter_medic/src/screens/cart/view/widgets/cart_item.dart';
import 'package:gap/gap.dart';
import 'package:sliver_tools/sliver_tools.dart';

@RoutePage()
class CartScreen extends StatelessWidget implements AutoRouteWrapper {
  const CartScreen({
    super.key,
    required this.cartBloc,
  });

  final CartBloc cartBloc;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CartBloc>.value(
      value: cartBloc,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            scrolledUnderElevation: 0,
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          const SliverGap(24),
          Row(
            children: [
              Text(
                'Корзина'.hardcoded,
                style: AppTypography.sfProDisplayBold24,
              ),
              const Spacer(),
              IconButton(
                onPressed: () => context.read<CartBloc>().add(
                      const CartEvent.deleteAll(),
                    ),
                icon: Icon(
                  Icons.delete_outline_rounded,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ],
          ).sliverToBox.sliverPaddingSymmetric(
                horizontal: 20,
              ),
          BlocBuilder<CartBloc, CartState>(
            bloc: context.read<CartBloc>(),
            builder: (context, state) {
              return state.maybeMap(
                loaded: (state) {
                  return MultiSliver(
                    children: [
                      SliverList.separated(
                        itemCount: state.items.length,
                        itemBuilder: (context, index) {
                          return CartItem(
                            model: state.items[index],
                            onDelete: () => context.read<CartBloc>().add(
                                  CartEvent.deleteByIndex(
                                    index: state.items[index].id,
                                  ),
                                ),
                            onDecrement: () {
                              if (state.items[index].patientCount == 1) {
                                return context.read<CartBloc>().add(
                                      CartEvent.deleteByIndex(
                                        index: state.items[index].id,
                                      ),
                                    );
                              }
                              return context.read<CartBloc>().add(
                                    CartEvent.decrementPatient(
                                      index: index,
                                      entity: CartEntity(
                                        id: state.items[index].id,
                                        title: state.items[index].title,
                                        price: state.items[index].price,
                                        patientCount:
                                            state.items[index].patientCount - 1,
                                      ),
                                    ),
                                  );
                            },
                            onIncrement: () => context.read<CartBloc>().add(
                                  CartEvent.incrementPatient(
                                    index: index,
                                    entity: CartEntity(
                                      id: state.items[index].id,
                                      title: state.items[index].title,
                                      price: state.items[index].price,
                                      patientCount:
                                          state.items[index].patientCount + 1,
                                    ),
                                  ),
                                ),
                          ).paddingSymmetric(horizontal: 20);
                        },
                        separatorBuilder: (context, index) {
                          return const Gap(16);
                        },
                      ).sliverPaddingOnly(top: 32),
                      const SliverGap(24),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          children: [
                            DefaultTextStyle(
                              style: AppTypography.sfProDisplaySemiBold20,
                              child: Row(
                                children: [
                                  const Text('Сумма'),
                                  const Spacer(),
                                  Text(
                                    '${state.items.fold<double>(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          (double.tryParse(element.price) ??
                                                  0.0) *
                                              element.patientCount,
                                    )} ₽',
                                  ),
                                ],
                              ).paddingSymmetric(horizontal: 20),
                            ),
                            const Gap(24),
                            const Spacer(),
                            PrimaryElevatedButton(
                              onPressed: () {},
                              child: const Text('Перейти к оформлению заказа'),
                            ).paddingSymmetric(horizontal: 20),
                            const Gap(12),
                          ],
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
