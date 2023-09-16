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
import 'package:store_app/features/home/presentation/view/widgets/bottom_navigation_bar_item_widget.dart';
import 'package:store_app/features/home/presentation/view/widgets/most_languege.dart';
import 'package:store_app/features/home/presentation/view/widgets/top_rating.dart';

class DeatilScreen extends StatelessWidget {
  const DeatilScreen({super.key, required this.translatorModel});
  final TranslatorModel translatorModel;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(translatorModel.image),
              ),
              const SizedBox(height: 10),
              Text(
                translatorModel.name,
                style: getTitleMediumTheme(context)
                    .copyWith(color: Color.fromARGB(255, 119, 74, 113)),
              ),
              const SizedBox(height: 5),
              Text(
                translatorModel.languege,
                style: getTitleMediumTheme(context)
                    .copyWith(color: Color.fromARGB(255, 158, 137, 153)),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  translatorModel.description,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              MyProgressButton(
                text: "طلب",
                width: double.infinity,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
