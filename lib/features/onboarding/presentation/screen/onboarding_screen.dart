import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg_task/core/constants/app_routes.dart';
import 'package:hedg_task/core/themes/app_colors.dart';
import 'package:hedg_task/features/onboarding/data/data_source/onboarding_data.dart';
import 'package:hedg_task/features/onboarding/presentation/widgets/onboarding_appbar.dart';
import 'package:hedg_task/features/onboarding/presentation/widgets/onboarding_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currnetPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  changeOnboarding(int onboardingIndex) {
    _pageController.animateToPage(onboardingIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: onboardingAppbar(_currnetPage, _pageController),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() => _currnetPage = value);
                  changeOnboarding(value);
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) =>
                    OnboardingItem(onboardingModel: onboardingData[index])),
          ),
          Row(
            children: [
              if (_currnetPage > 0)
                TextButton(
                    onPressed: () {
                      setState(() => _currnetPage--);
                      changeOnboarding(_currnetPage);
                    },
                    child: const Text("Back",
                        style: TextStyle(
                            color: AppColors.secondeyColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
              const Spacer(),
              SizedBox(
                height: 75,
                child: FloatingActionButton.large(
                  onPressed: () {
                    if (_currnetPage < onboardingData.length - 1) {
                      _currnetPage++;
                      changeOnboarding(_currnetPage);
                    } else {
                      context.pushReplacementNamed(AppRoutes.login);
                    }
                  },
                  backgroundColor: AppColors.secondeyColor,
                  shape: const CircleBorder(),
                  child: const Icon(Icons.arrow_forward_ios,
                      color: AppColors.white, size: 30),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
