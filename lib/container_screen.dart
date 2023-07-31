import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: const MyPopupMenuBotton(),
    );
  }
}

class MyPopupMenuBotton extends StatelessWidget {
  const MyPopupMenuBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      constraints: const BoxConstraints(minWidth: 50, minHeight: 10),
      child: const Text('This is a container'),
    );
  }
}

class MyToggleButton extends StatelessWidget {
  const MyToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      color: Colors.red,
      strokeWidth: 1,
      fallbackWidth: 20,
      fallbackHeight: 30,
      child: Text('Placeholder'),
    );
  }
}
