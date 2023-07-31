import 'package:flutter/material.dart';

import 'home_drawer.dart';
import 'home_content.dart';
import 'home_bottomnav.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Colors.white70,
        appBar: AppBar(
          // backgroundColor: Colors.white,
          title: const Text(
              'Flutter Widget Demo'), // Image.asset('assets/images/drawerbg1.jpeg'),-add image
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessengerState().hideCurrentSnackBar();
                // Show a SnackBar with a toast message.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {
                        debugPrint("You Pressed OK Action");
                      },
                    ),
                    content: const Text('You pressed Search Button'),
                    duration: const Duration(milliseconds: 3000),
                    width: 280,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0), // Inner padding for SnackBar content
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: Colors.black45,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        drawer: const MyDrawer(),
        body: const MyHomeUI(),
        bottomNavigationBar: const MyHomeBottomNav());
  }
}
