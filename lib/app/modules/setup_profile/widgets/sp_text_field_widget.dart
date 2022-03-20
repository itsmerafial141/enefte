import 'package:flutter/material.dart';

import '../../../values/colors.dart';
import '../../../values/styles.dart';

class SPTextFieldWidget extends StatelessWidget {
  const SPTextFieldWidget({
    required this.label,
    this.controller,
  });
  final String label;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text(
              label,
              style: MyStyles.smallCaption,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 14,
            child: controller != null
                ? TextField(
                    controller: controller,
                    style: MyStyles.caption,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  )
                : TextField(
                    style: MyStyles.caption,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
