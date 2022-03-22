// ignore_for_file: file_names

import 'package:enefte/app/values/styles.dart';
import 'package:flutter/material.dart';

import '../values/colors.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    this.image,
    this.tittle,
    required this.icon,
    required this.onPressed,
  });
  final String? image;
  final String? tittle;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).viewPadding.top,
      ),
      padding: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Center(
            child: image != null
                ? Image(
                    image: AssetImage(image!),
                  )
                : tittle != null
                    ? Text(
                        tittle!,
                        style: MyStyles.heading2,
                      )
                    : null,
          ),
          IconButton(
            icon: Icon(
              icon,
              color: MyColors.white,
            ),
            onPressed: onPressed,
            tooltip: MaterialLocalizations.of(context).backButtonTooltip,
          ),
        ],
      ),
    );
  }
}
