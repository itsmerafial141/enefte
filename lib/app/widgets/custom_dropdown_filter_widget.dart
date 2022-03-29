import 'package:flutter/material.dart';

import '../values/colors.dart';
import '../values/styles.dart';

class CustomDropDownFilterWidget extends StatelessWidget {
  const CustomDropDownFilterWidget({
    required this.text,
    required this.onPressed,
    required this.message,
  });

  final String message;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
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
    );
  }
}
