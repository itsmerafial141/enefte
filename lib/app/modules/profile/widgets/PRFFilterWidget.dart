import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class PRFFilterTabWidget extends StatelessWidget {
  const PRFFilterTabWidget({
    required this.text,
    required this.message,
    required this.onPressed,
  });

  final String text;
  final String message;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Tooltip(
          message: message,
          child: InkWell(
            child: MaterialButton(
              color: MyColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: onPressed,
              child: Row(
                children: [
                  Text(
                    text,
                    style: MyStyles.body,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: MyColors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(),
        Tooltip(
          message: "Upload",
          child: MaterialButton(
            color: MyColors.primaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {},
            child: Text(
              "Upload",
              style: MyStyles.button,
            ),
          ),
        ),
      ],
    );
  }
}
