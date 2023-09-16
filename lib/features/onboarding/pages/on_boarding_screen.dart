import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/components/base_progress_button.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/my_extensions.dart';
import 'package:store_app/features/auth/presentation/view/pages/log_in_screen.dart';
import 'package:store_app/features/auth/presentation/view/pages/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                FxSvg.translator,
                width: double.infinity,
                height: context.getHight(40),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          context.push(const RegisterScreen());
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(
                            context.getWidth(90),
                            context.getHight(7),
                          ),
                        ),
                        child: Text(
                          "انشاء حساب",
                          style: getTitleMediumTheme(context).copyWith(
                            color: LightColors.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: MyProgressButton(
                        width: 50,
                        text: "تسجيل الدخول",
                        height: context.getHight(7),
                        onPressed: () {
                          context.push(const LoginScreen());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
