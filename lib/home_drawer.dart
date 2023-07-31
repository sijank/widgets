import 'package:flutter/material.dart';
import 'about_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero, // Remove any padding
      children: [
        const DrawerHeader(child: Text('Draw Header')),
        DrawerButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        const UserAccountsDrawerHeader(
            accountName: Text('Sijan Khadka'),
            accountEmail: Text('sijank@yahoo.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/selfie.jpg'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/drawerbg1.jpeg'),
                    fit: BoxFit.cover))),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home '),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: const Icon(Icons.bug_report),
          title: const Text('Feedback/Bug Report '),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.star),
          title: const Text('Rate now '),
          onTap: () {},
        ),
        const MyAboutScreen(), //USE of AboutListTile
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('ShowAboutDailog'),
          onTap: () {
            // USE OF showAboutDialog.
            showAboutDialog(
              context: context,
              applicationName: 'My Widget Demo App',
              applicationVersion: '1.0',
              applicationIcon: const Icon(Icons.android),
              applicationLegalese: 'Copyright © 2023 Sijan Khadka',
              children: <Widget>[
                const SizedBox(height: 15.0),
                const ListTile(
                  title: Text('Sijan Khadka'),
                  leading: Icon(Icons.person_2),
                ),
                const ListTile(
                  title: Text('+977 9823311939'),
                  leading: Icon(Icons.call),
                ),
                const Text('This is some additional information about my app.'),
                const Text(
                    'You can also find more information on our website.'),
              ],
            );
          },
        ),
      ],
    ));
  }
}
