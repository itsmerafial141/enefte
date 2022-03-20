import 'package:flutter/material.dart';

class CircleDecorationWidget extends StatelessWidget {
  const CircleDecorationWidget({
    this.x,
    this.y,
    this.z,
    this.color,
  });

  final double? x, y, z;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(x!, y!, z!),
      height: MediaQuery.of(context).size.width * 0.6,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.width,
        ),
        border: Border.all(
          width: 1,
          color: color!,
        ),
      ),
    );
  }
}
