import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '/core/themes/light_theme.dart';

class MyLoading {
  static Widget ripple({double size = 200}) {
    return Center(
      child: SpinKitRipple(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }

  static Widget pumpingHeart({double size = 50}) {
    return Center(
      child: SpinKitPumpingHeart(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }

  static Widget wanderingCubes({double size = 50}) {
    return Center(
      child: SpinKitWanderingCubes(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }

  static ring({double size = 50}) {
    return Center(
      child: SpinKitRing(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }

  static doubleBounce({double size = 50}) {
    return Center(
      child: SpinKitDoubleBounce(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }

  static dualRing({double size = 50}) {
    return Center(
      child: SpinKitDualRing(
        color: LightColors.primary,
        size: size,
      ),
    ).animate().fade();
  }
}
