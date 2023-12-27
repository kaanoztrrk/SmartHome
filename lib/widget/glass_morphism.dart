import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smarthome/constants/app_colors.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 20),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.fgColor.withOpacity(.9),
                AppColor.black.withOpacity(.6),
                AppColor.fgColor.withOpacity(.5),
              ],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        child: child,
      ),
    ));
  }
}
