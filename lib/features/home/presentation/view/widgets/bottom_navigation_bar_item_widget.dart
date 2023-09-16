import 'package:flutter/material.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      useLegacyColorScheme: false,
      backgroundColor: Colors.white,
      elevation: 5,
      // type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "الرئيسيه",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_outlined),
          label: "الرسائل",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "البحث",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "الملف الشخصي",
        ),
      ],
    );
  }
}
