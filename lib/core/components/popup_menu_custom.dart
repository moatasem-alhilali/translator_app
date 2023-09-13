import 'package:flutter/material.dart';
import '/core/themes/light_theme.dart';

class BaseDropdownFiledCustom extends StatelessWidget {
  BaseDropdownFiledCustom({
    super.key,
    required this.items,
    this.hintText,
    this.onChanged,
    this.labelText,
    this.value,
    this.controller,
    this.fillColor,
    this.filled = true,
  });
  dynamic value;
  final List<String> items;
  bool filled;
  String? hintText;
  Color? fillColor;
  TextEditingController? controller;
  void Function(dynamic)? onChanged;
  String? labelText;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      initialSelection: hintText,
      onSelected: onChanged,
      inputDecorationTheme: InputDecorationTheme(
        filled: filled,
        fillColor: fillColor ?? LightColors.primary,
        border: InputBorder.none,
      ),
      controller: controller,
      enableFilter: false,
      enableSearch: false,
      hintText: hintText ?? "العملة",
      textStyle: getTitleMediumTheme(context).copyWith(color: Colors.black),
      menuStyle: MenuStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.black),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      dropdownMenuEntries: items
          .map(
            (item) => DropdownMenuEntry<String>(
              enabled: true,
              style: ButtonStyle(
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                textStyle: MaterialStatePropertyAll(
                  getTitleMediumTheme(context).copyWith(color: Colors.white),
                ),
              ),
              value: item,
              label: item,
            ),
          )
          .toList(),
    );
  }
}

class BaseDropdown extends StatelessWidget {
  BaseDropdown({
    super.key,
    required this.items,
    this.hintText,
    this.onChanged,
    this.labelText,
    this.value,
    this.controller,
    this.fillColor,
    this.filled = true,
  });
  dynamic value;
  final List<String> items;
  bool filled;
  String? hintText;
  Color? fillColor;
  TextEditingController? controller;
  void Function(dynamic)? onChanged;
  String? labelText;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      borderRadius: BorderRadius.circular(20),
      isDense: false,
      isExpanded: false,
      style: getTitleMediumTheme(context).copyWith(color: Colors.white),
      onChanged: onChanged,
      hint: Text(hintText ?? ""),
      enableFeedback: true,
      // menuMaxHeight: 50,

      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              alignment: Alignment.center,
              enabled: true,

              value: item,
              child: Text(
                item,
                style:
                    getTitleMediumTheme(context).copyWith(color: Colors.white),
              ),
              // label: item,
            ),
          )
          .toList(),
    );
  }
}
