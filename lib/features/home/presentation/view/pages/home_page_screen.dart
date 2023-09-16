import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/components/base_progress_button.dart';
import 'package:store_app/core/components/my_text_form_field.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/resources/size_config.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/my_extensions.dart';
import 'package:store_app/features/auth/presentation/view/pages/register_screen.dart';
import 'package:store_app/features/home/presentation/view/widgets/bottom_navigation_bar_item_widget.dart';
import 'package:store_app/features/home/presentation/view/widgets/most_languege.dart';
import 'package:store_app/features/home/presentation/view/widgets/top_rating.dart';
import 'package:store_app/features/search/presentation/view/pages/search_screen.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});
  String text =
      "تطبيقنا هو الحل الأمثل لتلبية احتياجاتك من الدليل اللغوي. سواء كنت بحاجة إلى مترجم لموعد مهم أو مؤتمر. تطبيقنا يجمع بين تقنية الذكاء الصناعي المتقدمة وقاعدة بيانات غنية بالمترجمين المحترفين لتزويدك بالمترجم المثالي لاحتياجاتك. ببساطة، قم بإعداد ملفك الشخصي، واصفا احتياجاتك، وسيقوم نظامنا الذكي بالباقي، استمتع بتجربة ترجمة سلسة وفعالة مع تطبيقنا اليوم.";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const BottomNavigationBarItemWidget(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              child: SvgPicture.asset(
                FxSvg.translator,
                width: double.infinity,
                height: context.getHight(20),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: getTitleMediumTheme(context).copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const TopRating(),
            const SizedBox(height: 10),
            const MostLanguege(),

            //
            Spacer(),

            OutlinedButton(
              onPressed: () {
                context.push(SaerchScreen());
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2,
                  color: LightColors.primary,
                ),
                minimumSize: Size(
                  double.infinity,
                  context.getHight(7),
                ),
              ),
              child: Text(
                "البحث عن مترجم",
                style: getTitleMediumTheme(context).copyWith(
                  color: LightColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
