import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '/core/components/shimmer_base.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseShimmer(
        child: Text(
          "No Internet".toUpperCase(),
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    ).animate().fade(duration: 500.ms);
  }
}
