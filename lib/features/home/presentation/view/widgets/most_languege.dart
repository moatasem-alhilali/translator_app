import 'package:flutter/material.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/themes/light_theme.dart';

class MostLanguege extends StatelessWidget {
  const MostLanguege({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "اللغات الأكثر تداول",
              style: getTitleMediumTheme(context),
            ),
          ),
          Expanded(child: Image.asset(FxImage.chart)),
        ],
      ),
    );
  }
}
