import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../values/colors.dart';
import '../../../values/strings.dart';
import 'introduction_body_widget.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntroductionScreen(
        globalBackgroundColor: MyColors.dark,
        isTopSafeArea: false,
        rawPages: List.generate(
          MyStrings.listHeadingOnBoarding.length,
          (index) {
            return IntroductionBodyWidget(
              image: MyStrings.listImageOnBoarding[index],
              heading: MyStrings.listHeadingOnBoarding[index],
              body: MyStrings.listbodyOnBoarding[index],
            );
          },
        ),
        dotsDecorator: DotsDecorator(
          activeColor: MyColors.white,
          color: MyColors.dark,
          activeSize: Size(30, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        showSkipButton: false,
        showNextButton: false,
        showBackButton: false,
        showDoneButton: false,
      ),
    );
  }
}
