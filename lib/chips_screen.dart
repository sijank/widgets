import 'package:flutter/material.dart';
import 'chips_widget.dart';

class MyChipsScreen extends StatelessWidget {
  const MyChipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chip Widgets'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const MyChoiceChip()

        //ListView(
        //children: const <Widget>[
        // MyChipCard(name: 'Choice Chip', child: MyChoiceChip()),
        // MyWidget(name: 'Filter Chip', child: MyCheckBoxInput()),
        // MyWidget(name: 'Action Chip', child: MySwitchInput()),
        // MyWidget(name: 'Input Chip', child: MyTextFieldInput()),
        // MyWidget(name: 'Raw Chip', child: MySilderInput()),
        //],
        //  ),
        );
  }
}

class MyChipCard extends StatelessWidget {
  final String? name;
  final Widget? child;

  const MyChipCard({
    super.key,
    this.name,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            name!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.pink,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        child!,
      ],
    );
  }
}
