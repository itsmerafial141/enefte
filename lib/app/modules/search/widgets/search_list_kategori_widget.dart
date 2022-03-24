import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../../../values/strings.dart';
import '../../../values/styles.dart';

class SRCListKategoriWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Row(
              children: List.generate(
                MyStrings.listKategoriHomePage.length,
                (index) {
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 130,
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(
                            math.Random().nextInt(255),
                            math.Random().nextInt(255),
                            math.Random().nextInt(255),
                            1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          MyStrings.listKategoriHomePage[index],
                          style: MyStyles.button,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
