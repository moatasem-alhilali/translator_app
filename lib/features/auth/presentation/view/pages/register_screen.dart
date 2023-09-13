import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/components/base_progress_button.dart';
import 'package:store_app/core/components/my_text_form_field.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/my_extensions.dart';

import 'ask_translator_screen.dart';
import 'find_translator_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "انشاء حساب",
              style: getTitleMediumTheme(context).copyWith(
                color: LightColors.primary,
                fontSize: 25,
              ),
            ),
            SvgPicture.asset(
              FxSvg.translator,
              width: double.infinity,
              height: context.getHight(20),
            ),
            MyTextFormField(
              hintText: "الاسم الاول",
            ),
            MyTextFormField(
              hintText: "الاسم الثاني",
            ),
            MyTextFormField(
              hintText: "بريدك الإكتروني",
            ),
            MyTextFormField(
              hintText: "كلمة السر",
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                context.push(const AskTranslatorScreen());
              },
              style: OutlinedButton.styleFrom(
                minimumSize: Size(
                  context.getWidth(90),
                  context.getHight(7),
                ),
              ),
              child: Text(
                "متابعة تسجيل الدخول كمترجم",
                style: getTitleMediumTheme(context).copyWith(
                  color: LightColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 10),
            MyProgressButton(
              text: "انشاء حساب",
              width: context.getWidth(90),
              onPressed: () {
                context.push(const FindTranslatorScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
