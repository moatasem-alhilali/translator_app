import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:store_app/core/themes/light_theme.dart';
import '/core/failure/request_state.dart';
import '/core/resources/size_config.dart';

class SnackBarMessage {
  static void showSnackBar({
    String? title,
    required BuildContext context,
    void Function()? onVisible,
    Color? backgroundColor,
    double? height,
    int seconds = 10,
    IconData? icon,
    RequestState state = RequestState.defaults,
    DismissDirection dismissDirection = DismissDirection.horizontal,
  }) {
    final snackBar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      backgroundColor: _getStatusBackGround(state, backgroundColor),
      duration: Duration(seconds: seconds),
      dismissDirection: dismissDirection,
      behavior: SnackBarBehavior.floating,
      clipBehavior: Clip.none,
      onVisible: onVisible,
      content: SizedBox(
        height: height ?? SizeConfig.vertical! * 5,
        child: Row(
          children: [
            Icon(
              _getIcon(state, icon),
              size: SizeConfig.vertical! * 3,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title ?? "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ).animate().fade(),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

Color _getStatusBackGround(RequestState state, Color? backgroundColor) {
  switch (state) {
    case RequestState.defaults:
      return backgroundColor ?? LightColors.primary;
    case RequestState.loading:
      return backgroundColor ?? LightColors.primary;
    case RequestState.success:
      return backgroundColor ?? Colors.green;

    case RequestState.error:
      return backgroundColor ?? Colors.red;
  }
}

IconData _getIcon(RequestState state, IconData? icon) {
  switch (state) {
    case RequestState.defaults:
      return icon ?? Icons.circle;
    case RequestState.loading:
      return icon ?? Icons.check_circle;

    case RequestState.success:
      return icon ?? Icons.check_circle;

    case RequestState.error:
      return icon ?? Icons.cancel;
  }
}
