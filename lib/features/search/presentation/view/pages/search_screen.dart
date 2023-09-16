import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/components/base_progress_button.dart';
import 'package:store_app/core/components/my_text_form_field.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/resources/size_config.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/constant.dart';
import 'package:store_app/core/utils/my_extensions.dart';
import 'package:store_app/features/auth/presentation/view/pages/register_screen.dart';
import 'package:store_app/features/detail/presentation/view/pages/detail_screen.dart';
import 'package:store_app/features/home/presentation/view/widgets/bottom_navigation_bar_item_widget.dart';
import 'package:store_app/features/home/presentation/view/widgets/most_languege.dart';
import 'package:store_app/features/home/presentation/view/widgets/top_rating.dart';

class SaerchScreen extends StatelessWidget {
  SaerchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "نتائج البحث",
                  style: getTitleMediumTheme(context),
                ),
              ),
              const Item(),
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (int i = 0; i < fakeData.length; i++)
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  context.push(
                    DeatilScreen(
                      translatorModel: fakeData[i],
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: context.getHight(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                          color: LightColors.primary,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 60),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  fakeData[i].name,
                                  style: getTitleMediumTheme(context),
                                ),
                                Text(
                                  fakeData[i].gobTitle,
                                  style: getTitleSmallTheme(context),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: LightColors.secondary,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(fakeData[i].image),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
