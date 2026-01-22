import '../Core/resources/AssetsManager.dart';

class onboardingModel{
    final String title;
    final String? describtion;
    final String image;

    const onboardingModel(
     {
      required this.title ,
       this.describtion ,
      required this.image,
      }
    );
    static const List <onboardingModel> onBoardingPages = [
      onboardingModel(
        title: "Welcome To Islmi App",
        image: AssetsManager.onboarding_1,
      ),
      onboardingModel(
        title: "Welcome To Islmi App",
        describtion: "We Are Very Excited To Have You In Our Community",
        image: AssetsManager.onboarding_2,
      ),
      onboardingModel(
        title: "Reading the Quran",
        describtion: "Read, and your Lord is the Most Generous",
        image: AssetsManager.onboarding_3,
      ),
      onboardingModel(
        title: "Bearish",
        describtion: "Praise the name of your Lord, the Most High",
        image: AssetsManager.onboarding_4,
      ),
      onboardingModel(
        title: "Holy Quran Radio",
        describtion: "You can listen to the Holy Quran Radio through the application for free and easily",
        image: AssetsManager.onboarding_5,
      )

    ];
}