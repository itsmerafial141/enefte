import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class ButtonWalletOptions extends StatelessWidget {
  const ButtonWalletOptions({required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: MyColors.secondaryColor,
      height: 56,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: MyStyles.button,
          ),
        ],
      ),
    );
  }
}
