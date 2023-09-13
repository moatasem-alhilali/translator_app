import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '/core/failure/request_state.dart';
import '/core/resources/size_config.dart';
import '/core/themes/light_theme.dart';

///---------------------------------------My progress button------------------------------------------

class MyProgressButton extends StatelessWidget {
  MyProgressButton({
    super.key,
    this.state = RequestState.defaults,
    this.text = "add",
    this.onPressed,
    this.border,
    this.width,
    this.height,
    this.borderRadius,
    this.defaultColor,
    this.marginVertical,
  });
  RequestState state;
  String? text;
  double? width;
  double? height;
  double? borderRadius;
  Color? defaultColor;
  Border? border;
  double? marginVertical;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: getWidth(state, width),
      margin: EdgeInsets.symmetric(vertical: marginVertical ?? 5),
      curve: Curves.easeInOutBack,
      height: height ?? SizeConfig.vertical! * 6.5,
      duration: 300.milliseconds,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        color: getBackColor(state, defaultColor),
      ),
      child: TextButton(
        onPressed: onPressed ??
            () {
              print("object");
            },
        child:
            getWidget(state, text, context).animate().fade(duration: 1.seconds),
      ),
    );
  }
}

//color
Color? getBackColor(RequestState state, Color? defaultColor) {
  switch (state) {
    case RequestState.defaults:
      return defaultColor ?? LightColors.primary;
    case RequestState.loading:
      return LightColors.black;

    case RequestState.success:
      return Colors.green;

    case RequestState.error:
      return Colors.red;
  }
}

//Widget
Widget getWidget(RequestState state, String? text, context) {
  switch (state) {
    case RequestState.defaults:
      return Text(
        text ?? "Add",
        style: getTitleMediumTheme(context).copyWith(color: Colors.white),
      );
    case RequestState.loading:
      return const CircularProgressIndicator(
        color: LightColors.primary,
      );

    case RequestState.success:
      return const CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.check,
          color: Colors.black,
        ),
      );

    case RequestState.error:
      return const CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.cancel,
          color: Colors.white,
        ),
      );
  }
}

//width
double? getWidth(RequestState state, double? width) {
  switch (state) {
    case RequestState.defaults:
      return width ?? SizeConfig.horizontal! * 60;
    case RequestState.loading:
      return SizeConfig.horizontal! * 12;

    case RequestState.success:
      return SizeConfig.horizontal! * 12;

    case RequestState.error:
      return SizeConfig.horizontal! * 12;
  }
}
