import 'package:flutter/material.dart';
import 'home_bottomnav.dart';

class MyPackageScreen extends StatelessWidget {
  const MyPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Packages Demo'),
        ),
        body: Container(),
        bottomNavigationBar: const MyHomeBottomNav());
  }
}
