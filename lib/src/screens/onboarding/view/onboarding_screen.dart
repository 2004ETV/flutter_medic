import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/common/assets/assets.dart';
import 'package:flutter_medic/src/common/extensions/string_extensions.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/repositories/storage/storage_repository.dart';
import 'package:flutter_medic/src/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:flutter_medic/src/screens/onboarding/models/onboarding_model.dart';
import 'package:flutter_medic/src/screens/onboarding/view/widgets/template.dart';
import 'package:get_it/get_it.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget implements AutoRouteWrapper {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(
        storageRepository: GetIt.I.get<StorageRepository>(),
      ),
      child: this,
    );
  }
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController pageController;
  final pages = [
    OnboardingModel(
      title: 'Анализы'.hardcoded,
      description: 'Экспресс сбор и получение проб'.hardcoded,
      image: AppAssets.imageAnalyzes,
    ),
    OnboardingModel(
      title: 'Уведомления'.hardcoded,
      description: 'Вы быстро узнаете о результатах'.hardcoded,
      image: AppAssets.imageNotifications,
    ),
    OnboardingModel(
      title: 'Мониторинг'.hardcoded,
      description: 'Наши врачи всегда наблюдают за вашими показателями здоровья'
          .hardcoded,
      image: AppAssets.imageMonitoring,
    ),
  ];

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const JumpingDotEffect(
                dotColor: AppColors.blueCrayola,
                activeDotColor: AppColors.blueCrayola,
                radius: 12,
                paintStyle: PaintingStyle.stroke,
              ),
            ),
          ),
          BlocListener<OnboardingBloc, OnboardingState>(
            listener: (context, state) {
              state.mapOrNull(
                success: (state) => context.router.pushAndPopUntil(
                  const SignInRoute(),
                  predicate: (route) => false,
                ),
                error: (state) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.error.toString(),
                    ),
                  ),
                ),
              );
            },
            child: PageView.builder(
              controller: pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return OnboardingTemplate(
                  title: pages[index].title,
                  description: pages[index].description,
                  image: pages[index].image,
                  pageIndex: index,
                  pagesCount: pages.length,
                  onPressed: () => context.read<OnboardingBloc>().add(
                        const OnboardingEvent.complete(),
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
