import 'package:flutter/material.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/constant.dart';

class TopRating extends StatelessWidget {
  const TopRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            "الأكثر تقيما",
            style: getTitleMediumTheme(context),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < fakeData.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(fakeData[i].image),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
