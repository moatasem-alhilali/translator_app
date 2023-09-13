import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:store_app/core/themes/light_theme.dart';
import '../app_localizations/AppLocalizations.dart';
import '/core/resources/assets_manager.dart';
import '/core/resources/size_config.dart';

import 'shimmer_base.dart';

class BaseNoData extends StatelessWidget {
  const BaseNoData({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseShimmer(
        child: Text(
          text.toUpperCase(),
          textAlign: TextAlign.center,
          style: getTitleMediumTheme(context).copyWith(fontSize: 22),
        ),
      ),
    ).animate().fade();
  }
}

class BaseErrorRobot extends StatelessWidget {
  const BaseErrorRobot({
    super.key,
    this.onPressed,
    this.message = 'المعذره حث خطأ ما',
  });
  final void Function()? onPressed;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.refresh,
              size: 40,
              color: Colors.black,
            ),
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: getTitleMediumTheme(context)
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ).animate().fade();
  }
}

class BaseNoCart extends StatelessWidget {
  const BaseNoCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: SizeConfig.vertical! * 15,
          child: Lottie.asset(
            FxLottie.cart,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          'sorryYouDontHaveAnyCart'.tr(context),
          textAlign: TextAlign.center,
          style: getTitleMediumTheme(context).copyWith(fontSize: 14),
        )
      ],
    );
  }
}

class BaseNoSearch extends StatelessWidget {
  const BaseNoSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.vertical! * 15,
      child: Lottie.asset(FxLottie.noSearch),
    );
  }
}

class BaseSuccessful extends StatelessWidget {
  const BaseSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Theme.of(context).canvasColor,
      child: SizedBox(
        height: SizeConfig.vertical! * 30,
        child: Lottie.asset(
          FxLottie.successful,
          repeat: false,
        ),
      ),
    );
  }
}

class BaseNotAuth2 extends StatelessWidget {
  const BaseNotAuth2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.vertical! * 30,
      child: Lottie.asset(FxLottie.login2),
    );
  }
}

class BaseFavorite extends StatelessWidget {
  const BaseFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeConfig.vertical! * 15,
            child: Lottie.asset(FxLottie.favorite),
          ),
          Text(
            'sorryYouYouDontHaveFavorite'.tr(context),
            textAlign: TextAlign.center,
            style: getTitleMediumTheme(context).copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}

class BaseSuccessSentOrder extends StatelessWidget {
  const BaseSuccessSentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.vertical! * 15,
      child: Lottie.asset(FxLottie.successSentOrder),
    );
  }
}

class BaseTrueAnimation extends StatelessWidget {
  const BaseTrueAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.vertical! * 15,
      child: Lottie.asset(FxLottie.trueAnimation, repeat: false),
    );
  }
}
