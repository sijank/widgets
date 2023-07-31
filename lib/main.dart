import 'package:flutter/material.dart';
import 'package:widgets/splash_screen.dart';

//import 'progressbar_screen.dart';

//import 'chips_screen.dart';

//import 'animated_container.dart';
//import 'splash_screen.dart';
import 'home_screen.dart';
import 'uiux_screen.dart';
import 'package_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Widgets Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
          primarySwatch: Colors.red,
          primaryColor: Colors.blue,
          splashColor: Colors.transparent,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
          // highlightColor: Colors.transparent,
          // hoverColor: Colors.transparent,
        ),
        initialRoute: '/',
        routes: {
          '/home': (context) => const MyHomeScreen(),
          '/uiux': (context) => const MyUiUxScreen(),
          '/packages': (context) => const MyPackageScreen(),
        },
        home: const SplashScreen()

        //MyChipsScreen()
        //MyTilesScreen()
        //const MyProgressbarScreen()
        //
        //   MyAnimatedContainer()
        );
  }
}
