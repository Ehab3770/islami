import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Core/resources/AssetsManager.dart';
import 'package:islami/Core/resources/ColorsManager.dart';

import '../../../model/onboardingModel.dart';
import '../widget/onboardingIndicatorWidget.dart';
import '../widget/onboardingItems.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPageIndex = 0;
  final  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset(AssetsManager.islamiLogo),
              Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index){
                      currentPageIndex = index;
                      setState(() {

                      });

                    },
                  itemCount: onboardingModel.onBoardingPages.length,
                  itemBuilder: (context , index){
                    return Onboardingitems(
                      items: onboardingModel.onBoardingPages[index],
                    );
                    }
              )
              ),
              Onboardingindicatorwidget( currentPageIndex: currentPageIndex,pageController: pageController,),
            ],
          ),
        ),
      ),

    );
  }
}
