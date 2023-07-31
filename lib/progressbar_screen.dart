import 'package:flutter/material.dart';
//import 'progressbar_widgets.dart';

class ProgressbarScreen extends StatelessWidget {
  const ProgressbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Progressbar Widgets'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MyWidgets(
                  name: 'NAME',
                  child:
                      TextButton(onPressed: () {}, child: const Text('Start'))),
              const Icon(Icons.add_circle),
              Icon(Icons.forward, color: Colors.blue[400])
            ]));
  }
}

class MyWidgets extends StatelessWidget {
  final String? name;
  final Widget? child;

  const MyWidgets({
    super.key,
    this.name,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            // child!,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('NAME'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
