import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/resources/assets_manager.dart';
import 'package:store_app/core/themes/light_theme.dart';
import 'package:store_app/core/utils/my_extensions.dart';

class FindTranslatorScreen extends StatelessWidget {
  const FindTranslatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      ),      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                child: Text(
                  "العثور على مترجم",
                  style: getTitleMediumTheme(context)
                      .copyWith(color: LightColors.primary, fontSize: 25),
                ),
              ),
              SvgPicture.asset(
                FxSvg.translator,
                width: double.infinity,
                height: context.getHight(20),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "الرجاء الاجابه عن هذه الأسئلة بشكل صحيح لكي نتمكن من مساعدتك بشكل ادق",
                  textAlign: TextAlign.center,
                  style: getTitleMediumTheme(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ماهي اللغات التي تبحث عنها",
                      style: getTitleMediumTheme(context)
                          .copyWith(color: LightColors.primary),
                    ),
                    //onboarding
                    CheckboxListTile(
                      value: true,
                      title: const Text("الإنجليزية"),
                      enabled: true,
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("العربية"),
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("الفرنسية"),
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("الايطاليه"),
                      onChanged: (onChanged) {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "طريقة التواصل مع المترجم",
                      style: getTitleMediumTheme(context)
                          .copyWith(color: LightColors.primary),
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("صوت"),
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: true,
                      title: const Text("فيديو"),
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("تواصل نصي"),
                      onChanged: (onChanged) {},
                    ),
                    CheckboxListTile(
                      value: false,
                      title: const Text("تواصل حضوري"),
                      onChanged: (onChanged) {},
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
