import 'package:flutter/material.dart';

/*----------------------------------------------------------------
List Tile
*****************************************************************/
class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool _selected = true;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => debugPrint('ListTile ontap'),
        onLongPress: () => setState(() {
              _selected = !_selected;
              debugPrint('ListTile onlonpress');
            }),
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: const Text('Sijan Khadka'),
        subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Pragmatic System Developer'),
              Text('+977 9823311939')
            ]),
        trailing: PopupMenuButton(
            itemBuilder: (_) => [const PopupMenuItem(child: Text('More'))]),
        //trailing: const Icon(Icons.more_vert), // Simple Icon Only
        isThreeLine: true,
        dense: false,
        //visualDensity:,
        shape: const CircleBorder(),
        contentPadding: const EdgeInsets.all(8.0),
        enabled: true,
        selected: _selected,
        focusColor: Colors.red,
        hoverColor: Colors.green,

        //focusNode: ,
        autofocus: false);
  }
}

/*----------------------------------------------------------------
 About List Tile
******************************************************************/
class MyAboutListTile extends StatelessWidget {
  const MyAboutListTile({super.key});

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
        icon: Icon(Icons.star),
        child: Text('About My Widget Demo App'));
  }
}

/* ----------------------------------------------------------------
 Checkbox List
********************************************************************/

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({super.key});

  @override
  State<MyCheckboxListTile> createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  final bool _selected = true;
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _checkBoxValue,
      selected: _selected,
      onChanged: (index) {
        setState(() {
          _checkBoxValue = !_checkBoxValue;
        });
      },
      title: const Text(
        'This is a checkbox',
      ),
      subtitle: const Text('This is the subtitle'),
      secondary: const Icon(Icons.check),
      checkColor: Colors.yellow,
      activeColor: Colors.red,
      // checkboxShape: CircleBorder()  // Circle Shaped Checkbox
    );
  }
}

/*----------------------------------------------------------------
SwitchList Tile
****************************************************************/
class MySwitchListTile extends StatefulWidget {
  const MySwitchListTile({super.key});

  @override
  State<MySwitchListTile> createState() => _MySwitchListTileState();
}

class _MySwitchListTileState extends State<MySwitchListTile> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      onChanged: (i) => setState(() => _switchValue = !_switchValue),
      value: _switchValue,
      //selected : _selected,
      secondary: const Icon(Icons.favorite, color: Colors.pink),
      activeColor: Colors.green,
      activeTrackColor: Colors.green.withOpacity(0.2),
      inactiveThumbColor: Colors.red,
      inactiveTrackColor: Colors.red.withOpacity(0.2),
      title: const Text('Pragmatic Developer'),
      subtitle: const Text('Pragmatic Developer'),
    );
  }
}

/*----------------------------------------------------------------
My Expansion Tile
*******************************************************************/
class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text('MASA FishingZone'),
      leading: Icon(Icons.cloud),
      subtitle: Text('Chandeshowri, Tokha'),
      children: [
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('+977 9823311939'),
        ),
        MyListTile()
      ],
    );
  }
}

/* ----------------------------------------------------------------
Expansion Panel
*******************************************************************/
class MyExpansionPanelList extends StatefulWidget {
  const MyExpansionPanelList({super.key});

  @override
  State<MyExpansionPanelList> createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<MyExpansionPanelList> {
  final List<bool> _expands = [true, false, false];
  bool _expand = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            _expands[index] = !_expands[index];
            _expand = !_expand;
          });
          debugPrint(
              'The expansion state of ExpansionPanel $index has changed to $isExpanded');
        },
        children: List.generate(
          _expands.length,
          (index) => ExpansionPanel(
            isExpanded: _expands[index],
            body: const ListTile(
              title: Text('This is the body'),
            ),
            headerBuilder: (_, expand) =>
                const ListTile(title: Text("This is the header")),
          ),
        ).toList());

    /*
        children: [
          ExpansionPanel(
            headerBuilder: (index, isExpanded) {
              return const Text('This is the header');
            },
            body: const Text('This is the body'),
            isExpanded: _expand,
          ),
          ExpansionPanel(
            isExpanded: _expand,
            headerBuilder: (context, isExpanded) {
              return const Text('This is another header');
            },
            body: const Text('This is another body'),
          ),
          
        ]);*/
  }
}

/*----------------------------------------------------------------
GridTile widget 
It is a stateful widget that represents a single tile in a GridView.
It is a versatile widget that can be used to display a variety of 
content, such as images, text, and icons.
The GridTile widget has the following properties:
child : The content of the tile. This can be any widget.
header : The header of the tile. This can be any widget.
footer : The footer of the tile. This can be any widget.
selected : A boolean value that indicates whether the tile is selected.
onTap : A callback function that is called when the tile is tapped.

****************************************************************/

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.all(4.0),
      child: GridTile(
        header: const Text('This is the header'),
        footer: const Text('This is the footer'),
        child: Image.asset('assets/images/image1.jpg'),
      ),
    );
    /*
    GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),

      children: [
        const GridTile(
          header: Text('This is the header'),
          footer: Text('This is the footer'),
          child: Text('This is the body'),
        ),
        GridTile(
          header: const Text('This is another header'),
          footer: const Text('This is another footer'),
          child: Image.asset('assets/images/image1.jpg'),
        ),
      ],
    );
    */
  }
}
