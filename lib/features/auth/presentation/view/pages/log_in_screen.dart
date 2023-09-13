import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/components/base_progress_button.dart';
import 'package:store_app/core/components/my_text_form_field.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/resources/size_config.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/my_extensions.dart';
import 'package:store_app/features/auth/presentation/view/pages/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: LightColors.primary,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "تسجيل الدخول",
              style: getTitleMediumTheme(context).copyWith(
                color: LightColors.primary,
                fontSize: 30,
              ),
            ),
            SvgPicture.asset(
              FxSvg.translator,
              width: double.infinity,
              height: context.getHight(20),
            ),
            MyTextFormField(
              hintText: "بريدك الإكتروني",
            ),
            MyTextFormField(
              hintText: "كلمة السر",
            ),
            MyProgressButton(
              text: "دخول",
              width: context.getWidth(90),
              onPressed: () {
                context.push(const RegisterScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
