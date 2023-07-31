import 'package:flutter/material.dart';
import 'inputs_widget.dart';

class MyInputsScreen extends StatelessWidget {
  const MyInputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Demo'),
      ),
      body: ListView(
        children: const <Widget>[
          MyButtonCard(name: 'Radio', child: MyRadioInput()),
          MyButtonCard(name: 'Checkbox', child: MyCheckBoxInput()),
          MyButtonCard(name: 'Switch', child: MySwitchInput()),
          MyButtonCard(name: 'Textfield', child: MyTextFieldInput()),
          MyButtonCard(name: 'Range Slider', child: MySilderInput()),
          MyButtonCard(name: 'Stepper', child: MyStepperInput()),
        ],
      ),
    ));
  }
}

class MyButtonCard extends StatelessWidget {
  final String? name;
  final Widget? child;

  const MyButtonCard({
    super.key,
    this.name,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Wrap(
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
