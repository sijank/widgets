import 'package:flutter/material.dart';
import 'home_bottomnav.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MyUiUxScreen extends StatelessWidget {
  const MyUiUxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UI/UX Demo'),
        ),
        body: Container(),
        bottomNavigationBar: const MyHomeBottomNav());
  }
}
