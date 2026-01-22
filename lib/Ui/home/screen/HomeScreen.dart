import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/Core/resources/AssetsManager.dart';
import 'package:islami/Core/resources/ColorsManager.dart';
import 'package:islami/Core/resources/StringsManager.dart';
import 'package:islami/Ui/home/widget/tabs/quranTab/quranTab.dart';
import 'package:islami/Ui/home/widget/tabs/radioTab/radioTab.dart';
import 'package:islami/Ui/home/widget/tabs/sebhaTab/sebhaTab.dart';

import '../widget/tabs/hadithTab/hadithTab.dart';
import '../widget/tabs/timeTab/timeTab.dart';

class Homescreen extends StatefulWidget {

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0;
  List <Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: ColorsManager.goldColor,
        indicatorColor: ColorsManager.blackColor.withOpacity(0.6),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (value) {
         setState(() {
           selectedIndex = value;
         });
          },
          selectedIndex: selectedIndex,
          destinations: [
            NavigationDestination(
               icon: SvgPicture.asset(
                   AssetsManager.quranIcon,
                 colorFilter: ColorFilter.mode(
                     ColorsManager.blackColor,
                     BlendMode.srcIn,
                 ),
               ),
               label:StringsManager.quran,
             selectedIcon: SvgPicture.asset(
               AssetsManager.quranIcon,
               colorFilter: ColorFilter.mode(
                 ColorsManager.whiteColor,
                 BlendMode.srcIn,
               ),
             ),
           ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.hadethIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.blackColor,
                  BlendMode.srcIn,
                ),
              ),
              label:StringsManager.hadith,
              selectedIcon: SvgPicture.asset(
                AssetsManager.hadethIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.sebhaIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.blackColor,
                  BlendMode.srcIn,
                ),
              ),
              label:StringsManager.sebha,
              selectedIcon: SvgPicture.asset(
                AssetsManager.sebhaIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.radioIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.blackColor,
                  BlendMode.srcIn,
                ),
              ),
              label:StringsManager.radio,
              selectedIcon: SvgPicture.asset(
                AssetsManager.radioIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AssetsManager.timeIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.blackColor,
                  BlendMode.srcIn,
                ),
              ),
              label:StringsManager.time,
              selectedIcon: SvgPicture.asset(
                AssetsManager.timeIcon,
                colorFilter: ColorFilter.mode(
                  ColorsManager.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ]
      ),
      body: tabs[selectedIndex],
    );
  }
}
