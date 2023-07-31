import 'package:flutter/material.dart';

class MyAboutScreen extends StatelessWidget {
  const MyAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutListTile(
        key: Key('MyListTile'),
        applicationName: 'My Widget Demo App',
        applicationVersion: '1.0',
        applicationIcon: Icon(Icons.android),
        applicationLegalese: 'Copyright © 2023 Sijan Khadka',
        aboutBoxChildren: <Widget>[
          SizedBox(height: 15.0),
          ListTile(
            title: Text('Sijan Khadka'),
            leading: Icon(Icons.person_2),
          ),
          ListTile(
            title: Text('+977 9823311939'),
            leading: Icon(Icons.call),
          ),
          Text('This is some additional information about my app.'),
          Text('You can also find more information on our website.'),
        ],
        icon: Icon(Icons.info),
        child: Text('About'));
  }
}
