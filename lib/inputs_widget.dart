import 'package:flutter/material.dart';

class MyRadioInput extends StatefulWidget {
  const MyRadioInput({super.key});

  @override
  State<MyRadioInput> createState() => _MyRadioInputState();
}

class _MyRadioInputState extends State<MyRadioInput> {
  int? _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: 0,
            groupValue: _groupValue,
            onChanged: (i) {
              debugPrint('Changed $i');
              setState(() => _groupValue = i);
            }),
        const Text('Male'),
        Radio(
            value: 1,
            groupValue: _groupValue,
            onChanged: (i) {
              debugPrint('Changed $i');
              setState(() => _groupValue = i);
            }),
        const Text('Female'),
      ],
    );
  }
}

class MyCheckBoxInput extends StatefulWidget {
  const MyCheckBoxInput({super.key});

  @override
  State<MyCheckBoxInput> createState() => _MyCheckBoxInputState();
}

class _MyCheckBoxInputState extends State<MyCheckBoxInput> {
  bool? _checkBoxValue = false;
  bool? _checkBoxValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _checkBoxValue,
            // checked: _checkBoxValue,
            onChanged: (i) {
              setState(() {
                _checkBoxValue = i;
                debugPrint('Tea Selected $i');
              });
            }),
        const Text('Tea'),
        Checkbox(
            value: _checkBoxValue1,
            tristate: true,
            onChanged: (i) {
              setState(() => _checkBoxValue1 = i);
              debugPrint('Coffee Selected $i');
            }),
        const Text('Coffee')
      ],
    );
  }
}

class MySwitchInput extends StatefulWidget {
  const MySwitchInput({super.key});

  @override
  State<MySwitchInput> createState() => _MySwitchInputState();
}

class _MySwitchInputState extends State<MySwitchInput> {
  bool _switchValue = false;
  String _switchState = 'On';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
            value: _switchValue,
            onChanged: (i) {
              setState(() => _switchValue = i);
              _switchState = _switchValue ? 'On' : 'Off';
              debugPrint('Switch: $i');
            }),
        Text(_switchState),
      ],
    );
  }
}

class MyTextFieldInput extends StatelessWidget {
  const MyTextFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Your name',
            hintText: 'Enter your name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.green),
            ),
          ),
        ));
  }
}

class MySilderInput extends StatefulWidget {
  const MySilderInput({super.key});

  @override
  State<MySilderInput> createState() => _MySilderInputState();
}

class _MySilderInputState extends State<MySilderInput> {
  double _slideValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Slider(
      onChanged: (i) {
        setState(() => _slideValue = i);
        debugPrint('Range Slide to $i');
      },
      value: _slideValue,
      min: 0.0,
      max: 100.0,
      divisions: 10,
      label: "$_slideValue",
      inactiveColor: Colors.grey,
      activeColor: Colors.red,
    );
  }
}

class MyStepperInput extends StatefulWidget {
  const MyStepperInput({super.key});

  @override
  State<MyStepperInput> createState() => _MyStepperInputState();
}

class _MyStepperInputState extends State<MyStepperInput> {
  int _step = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Stepper(
        type: StepperType.horizontal,
        onStepContinue: () {
          setState(() {
            if (_step >= 0) if (_step < 2) _step++;
          });
          debugPrint("Continue: $_step");
        },
        onStepCancel: () {
          setState(() {
            if (_step > 0) _step--;
          });
          debugPrint("Cancel:  $_step");
        },
        currentStep: _step,
        steps: [
          Step(
              title: const Text('Page 1'),
              content: const Text('Page 1 Content here'),
              isActive: (_step == 0 ? true : false)),
          Step(
              title: const Text('Page 2'),
              content: const Text('Page 2 Content here'),
              state: _step == 2 ? StepState.editing : StepState.complete,
              isActive: (_step == 1 ? true : false)),
          Step(
              title: const Text('Page 3'),
              content: const Text('Page 3 Content here'),
              isActive: (_step == 2 ? true : false))
        ],
      ),
    );
  }
}
