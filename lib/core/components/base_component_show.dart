import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:store_app/core/themes/light_theme.dart';
import '../app_localizations/AppLocalizations.dart';

import '/core/resources/size_config.dart';

Future<void> showMyBottomSheetFunction({
  required BuildContext context,
  required Widget child,
  FutureOr<void> Function()? whenCompleted,
}) async {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const HeaderStyle(),
          SizedBox(
            child: child.animate().fade(duration: 1.seconds),
          ),
        ],
      );
    },
  ).whenComplete(whenCompleted ?? () {});
}

class HeaderStyle extends StatelessWidget {
  const HeaderStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: SizeConfig.vertical! * .5,
            width: SizeConfig.horizontal! * 3,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
          Container(
            height: SizeConfig.vertical! * .5,
            width: SizeConfig.horizontal! * 10,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
          Container(
            height: SizeConfig.vertical! * .5,
            width: SizeConfig.horizontal! * 3,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showMyDialogFunction({
  required BuildContext context,
  required Widget child,
  bool animate = true,
}) async {
  showGeneralDialog(
    context: context,
    useRootNavigator: true,
    transitionDuration: 500.milliseconds,
    transitionBuilder: animate
        ? (context, animation, secondaryAnimation, child) {
            Tween<Offset> tween;
            tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
            return SlideTransition(
              position: tween.animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SafeArea(
                  child: Center(child: child),
                ),
              ),
            );
          }
        : null,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(child: child),
        ),
      );
    },
  );
}

Future<void> showMyActionSheetsFunction({
  required BuildContext context,
  required List<Widget> actions,
}) async {
  showCupertinoModalPopup(
    context: context,
    builder: (context) {
      return CupertinoActionSheet(
        actions: actions,
      ).animate().fade();
    },
  );
}

class BaseLoader extends StatelessWidget {
  const BaseLoader({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(
      radius: 20,
    ).animate().fade();
  }
}

//

void showMyDeleteAlert({
  required BuildContext context,
  required void Function() onPressedYes,
  String? title,
  String? subTitle,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        title ?? 'delete'.tr(context),
        style: getTitleMediumTheme(context).copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        subTitle ?? 'areYouSureToDelete'.tr(context),
        style: getTitleMediumTheme(context).copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: onPressedYes,
          child: Text(
            'yes'.tr(context),
            style: getTitleSmallTheme(context).copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'no'.tr(context),
            style: getTitleSmallTheme(context).copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

void showMyAlert({
  required BuildContext context,
  required void Function() onPressedYes,
  String? title,
  String? subTitle,
}) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(
        title ?? "",
        style: getTitleMediumTheme(context)
            .copyWith(fontSize: 20, color: Colors.red),
      ),
      content: Text(
        subTitle ?? "",
        style: getTitleMediumTheme(context).copyWith(fontSize: 14),
      ),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          onPressed: onPressedYes,
          child: Text(
            'حسنا',
            style: getTitleSmallTheme(context),
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'رجوع',
            style: getTitleSmallTheme(context),
          ),
        ),
      ],
    ),
  );
}

class BaseContextMenu extends StatelessWidget {
  const BaseContextMenu({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(
      actions: <Widget>[
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
          },
          trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
          child: const Text('Copy'),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
          },
          trailingIcon: CupertinoIcons.share,
          child: const Text('Share'),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
          },
          trailingIcon: CupertinoIcons.heart,
          child: const Text('Favorite'),
        ),
        CupertinoContextMenuAction(
          onPressed: () {
            Navigator.pop(context);
          },
          isDestructiveAction: true,
          trailingIcon: CupertinoIcons.delete,
          child: const Text('Delete'),
        ),
      ],
      child: child,
    );
  }
}

///When the null safety throw an error customize the ui
void customErrorBuild() {
  ErrorWidget.builder = (FlutterErrorDetails detail) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow,
      ),
      child: Text(
        detail.exception.toString(),
      ),
    );
  };
}
