import 'package:flutter/cupertino.dart';
import 'package:islami/Core/resources/ColorsManager.dart';
import 'package:islami/model/onboardingModel.dart';

class Onboardingitems extends StatelessWidget {
  final onboardingModel items;
  const Onboardingitems({super.key , required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Expanded(child: Image.asset(items.image)),
        Text(
          items.title ,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: ColorsManager.goldColor,
          ) ,
        ),
        items.describtion == null ? SizedBox.shrink() :
        Text(
          items.describtion ! ,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorsManager.goldColor,
          ) ,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32,),

      ],
    );
  }
}
