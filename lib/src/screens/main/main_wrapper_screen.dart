import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/config/router/router.dart';

@RoutePage()
class MainWrapperScreen extends StatelessWidget {
  const MainWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.monitor_heart_outlined,
        ),
        label: 'Анализы'.hardcoded,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.person_outline_rounded,
        ),
        label: 'Профиль'.hardcoded,
      ),
    ];

    return AutoTabsScaffold(
      routes: const [
        AnalyzesRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black12,
                width: .5,
              ),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: tabs,
          ),
        );
      },
    );
  }
}
