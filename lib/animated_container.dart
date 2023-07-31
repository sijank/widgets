import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double _height = 100.0, _width = 100.0;
  bool _crossFadeStateShowFirst = true;
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(children: [
        _myGrowContainer(),
        const Divider(),
        _myCrossFadeContainer(),
        const Divider(),
        _myAnimatedOpacity(),
      ]),
    );
  }

  void _increaseWidth() {
    setState(() {
      _width = _width >= 320.0 ? 100.0 : _width += 50;
    });
  }

  Widget _myGrowContainer() => AnimatedContainer(
      duration: const Duration(microseconds: 5000),
      curve: Curves.elasticInOut,
      color: Colors.amber,
      height: _height, //* pow(1.1, _height.toDouble() / 100.0),
      width: _width,
      child: TextButton(
        onPressed: () {
          _increaseWidth();
        },
        child: Text('Tap to grow width\n$_width'),
      ));

  void _crossFade() {
    setState(() =>
        _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true);
  }

  Widget _myCrossFadeContainer() => InkWell(
      onTap: () => _crossFade(),
      child: AnimatedCrossFade(
        firstChild: Container(color: Colors.amber, height: 100, width: 100),
        secondChild: Container(color: Colors.lime, height: 200, width: 200),
        crossFadeState: _crossFadeStateShowFirst
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(microseconds: 5000),
        sizeCurve: Curves.bounceOut,
      ));

  void _animatedOpacity() {
    setState(() => _opacity = _opacity == 1.0 ? 0.3 : 1.0);
  }

  Widget _myAnimatedOpacity() => AnimatedOpacity(
        duration: const Duration(microseconds: 500),
        opacity: _opacity,
        child: Container(
            color: Colors.amber,
            height: 100,
            width: 100,
            child: TextButton(
                onPressed: _animatedOpacity, child: const Text('Tap to Fade'))),
      );
} // Class End

