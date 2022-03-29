// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';
import '../../../widgets/custom_dropdown_filter_widget.dart';

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
        CustomDropDownFilterWidget(
          message: message,
          text: text,
          onPressed: onPressed,
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
