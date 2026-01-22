import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Core/resources/RoutesManager.dart';

import '../../../Core/resources/ColorsManager.dart';
import '../../../model/onboardingModel.dart';

class Onboardingindicatorwidget extends StatelessWidget {
  final int currentPageIndex;
  final  PageController pageController;
  const Onboardingindicatorwidget({
    super.key ,
    required this.currentPageIndex ,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        currentPageIndex == 0 ? const SizedBox(width: 60,) :
        TextButton(
            onPressed: (){
              pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut
              );

            },
            child: Text(
              "Back" ,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorsManager.goldColor,
              ),
            )
        ),
        DotsIndicator(
          dotsCount: onboardingModel.onBoardingPages.length,
          position: currentPageIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: ColorsManager.goldColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        TextButton(
            onPressed: (){
              if(currentPageIndex < 4){
                pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut
                );
              }else{
                Navigator.pushReplacementNamed(context, RoutesManager.homeRoute);
              }

            },
            child: Text(
             currentPageIndex == 4 ? "Finish" :
              "Next",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorsManager.goldColor,
              ),
            )
        )

      ],
    );
  }
}
