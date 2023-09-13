import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:store_app/core/themes/light_theme.dart';
import '/core/components/shimmer_base.dart';

import '/core/resources/size_config.dart';

class BaseExpansionTile extends StatelessWidget {
  BaseExpansionTile({
    super.key,
    required this.subtitle,
    required this.title,
    this.leadingImage,
    this.leadingWidget,
    this.subtitleWidget,
    this.children = const [],
  });
  Widget? subtitleWidget;
  final String subtitle;
  final String title;
  String? leadingImage;
  Widget? leadingWidget;
  List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        collapsedBackgroundColor: Theme.of(context).primaryColor,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
        collapsedIconColor:
             Theme.of(context).canvasColor,
        iconColor: Theme.of(context).canvasColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        subtitle: subtitle != ""
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    subtitle,
                    style: getTitleMediumTheme(context).copyWith(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  subtitleWidget ?? const SizedBox(),
                ],
              )
            : Align(
                alignment: Alignment.centerLeft,
                child: subtitleWidget ?? const SizedBox(),
              ),
        title: Text(
          title,
          style: getTitleMediumTheme(context),
        ),
        leading: leadingWidget ??
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: leadingImage == null
                  ? const SizedBox()
                  : Image.network(
                      leadingImage ?? "",
                      width: SizeConfig.horizontal! * 18,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const CircularProgressIndicator();
                      },
                    ),
            ),
        children: children,
      ),
    );
  }
}

class BaseLoadingShimmerExpansionTile extends StatelessWidget {
  const BaseLoadingShimmerExpansionTile({super.key, this.length = 1});
  final int length;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            collapsedBackgroundColor: Theme.of(context).primaryColor,
            collapsedShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
            collapsedIconColor:
              Theme.of(context).canvasColor,
            iconColor: Theme.of(context).canvasColor.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            trailing: const BaseShimmer(child: CircleAvatar()),
            subtitle: BaseShimmer(
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            title: BaseShimmer(
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            leading: const BaseShimmer(child: CircleAvatar()),
          ),
        ).animate().fade();
      },
      itemCount: length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
          width: 5,
        );
      },
    );
  }
}
