import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  List<bool> choicesChipsItems = [
    true,
    false,
    false,
    false,
    true,
    false,
    false,
    false
  ];
  List<String> actionChipsItems = [
    "Tryciamouth",
    "East Kellytown",
    "South Brentton",
    "Collierburgh",
    "South Celestinefort",
    "Lake Joannieborough",
    "West Phoebe",
    "North Teresamouth",
    "New Carolanneburgh",
    "Everettside",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: Expanded(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Choice Chip",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              children: List.generate(
                choicesChipsItems.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ChoiceChip(
                    selected: choicesChipsItems[i],
                    onSelected: (t) {
                      setState(() {
                        choicesChipsItems[i] = !choicesChipsItems[i];
                      });
                    },
                    avatar: const CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ),
                    label: Text("Label $i"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Filter Chip",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              children: List.generate(
                choicesChipsItems.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FilterChip(
                    selected: choicesChipsItems[i],
                    onSelected: (t) {
                      setState(() {
                        choicesChipsItems[i] = !choicesChipsItems[i];
                      });
                    },
                    label: Text("Label $i"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Action Chip",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              children: List.generate(
                actionChipsItems.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ActionChip(
                    onPressed: () {
                      _showBottomMessage(actionChipsItems[i]);
                    },
                    avatar: const CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ),
                    label: Text(actionChipsItems[i]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Input Chip",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              children: List.generate(
                choicesChipsItems.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InputChip(
                    onDeleted: () {},
                    selected: choicesChipsItems[i],
                    onSelected: (d) {
                      setState(() {
                        d
                            ? choicesChipsItems[i] = true
                            : choicesChipsItems[i] = false;
                      });
                    },
                    label: Text("Label $i"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Raw Chip",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Wrap(
              children: List.generate(
                choicesChipsItems.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RawChip(
                    onDeleted: () {},
                    selected: choicesChipsItems[i],
                    onSelected: (d) => {
                      setState(() {
                        d
                            ? choicesChipsItems[i] = true
                            : choicesChipsItems[i] = false;
                      }),
                    },
                    label: Text("Label $i"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }

  _showBottomMessage(msg) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Container(
        color: Colors.black,
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text("$msg")),
      ),
    );
  }
}
