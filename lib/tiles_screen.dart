import 'package:flutter/material.dart';
import 'tiles_widget.dart';

class MyTilesScreen extends StatelessWidget {
  const MyTilesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile Demo'),
      ),
      body: ListView(
        children: const <Widget>[
          MyTileWidget(name: 'List Tile', child: MyListTile()),
          MyTileWidget(name: 'About List Tile', child: MyAboutListTile()),
          MyTileWidget(name: 'Checkbox List Tile', child: MyCheckboxListTile()),
          MyTileWidget(name: 'Switch List Tile', child: MySwitchListTile()),
          MyTileWidget(name: 'Expansion Tile', child: MyExpansionTile()),
          MyTileWidget(name: 'Expansion Panel', child: MyExpansionPanelList()),
          MyTileWidget(name: 'Grid Tile', child: MyGridTile()),
          ListTile(
            leading: Icon(Icons.train),
            title: Text('Train'),
            trailing: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}

class MyTileWidget extends StatelessWidget {
  final String? name;
  final Widget? child;

  const MyTileWidget({
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
              fontSize: 12.0,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        child!,
      ],
    );
  }
}
