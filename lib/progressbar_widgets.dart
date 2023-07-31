import 'package:flutter/material.dart';

class MyProgressBarWidget extends StatefulWidget {
  const MyProgressBarWidget({super.key});

  @override
  State<MyProgressBarWidget> createState() => _MyProgressbarWidgetsState();
}

class _MyProgressbarWidgetsState extends State<MyProgressBarWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyFiniteLinearProgressbar extends StatelessWidget {
  const MyFiniteLinearProgressbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      value: 50.0,
    );
  }
}

class MyInfiniteLinearProgressbar extends StatelessWidget {
  const MyInfiniteLinearProgressbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
