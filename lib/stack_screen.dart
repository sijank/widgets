import 'package:flutter/material.dart';
import 'dart:math';

class MyStackScreen extends StatefulWidget {
  const MyStackScreen({super.key});

  @override
  State<MyStackScreen> createState() => _MyStackScreenState();
}

class _MyStackScreenState extends State<MyStackScreen> {
  Alignment _alignment = Alignment.center;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget Demo'),
      ),
      body: ListView(
        children: [
          _mySpacer(),
          Column(
            children: <Widget>[
              const Text(
                'Stack',
                //style: Theme.of(context).textTheme.headlineSmall,override.TextSyle()
              ),
              _mySpacer(),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: _myStackWidget(context),
              ),
              /* Start: Randmize Buttom */
              TextButton(
                onPressed: () {
                  _randomAlignmentGen();
                  debugPrint('$_alignment');
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: const Text("Randomize Stack",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              /* End: Randomize Button  */

              _mySpacer(),
              const Text(
                'Indexed Stack',
                //style: Theme.of(context).textTheme.headlineSmall,override.TextSyle()
              ),
              _mySpacer(),
              _myIndexedStack(),

              /* Start: Randmize Buttom */
              TextButton(
                onPressed: () {
                  _randomIndex();
                  debugPrint('$_index');
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: const Text("Randomize Index",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              /* End: Randomize Button  */
            ],
          ),
        ],
      ),
    );
  }

  _randomAlignmentGen() {
    int dice = Random().nextInt(9);
    switch (dice) {
      case 0:
        _alignment = Alignment.bottomCenter;
        break;
      case 1:
        _alignment = Alignment.bottomLeft;
        break;
      case 2:
        _alignment = Alignment.bottomRight;
        break;
      case 3:
        _alignment = Alignment.bottomRight;
        break;
      case 4:
        _alignment = Alignment.topCenter;
        break;
      case 5:
        _alignment = Alignment.topLeft;
        break;
      case 6:
        _alignment = Alignment.topRight;
        break;
      case 7:
        _alignment = Alignment.center;
        break;
      case 8:
        _alignment = Alignment.centerLeft;
        break;
      case 9:
        _alignment = Alignment.centerRight;
        break;
      default:
    }
    setState(() {});
  }

  _randomIndex() {
    int c = Random().nextInt(4);
    setState(() {
      _index = c;
    });
  }

  SizedBox _mySpacer() => const SizedBox(height: 15.0);

  Stack _myStackWidget(BuildContext context) {
    return Stack(alignment: _alignment, children: [
      _myContainer(),
      _myContainer(230.0, 230.0, Colors.red, '1'),
      _myContainer(200.0, 200.0, Colors.amber, '2'),
      _myContainer(150.0, 150.0, Colors.deepOrange, '3'),
      _myContainer(100.0, 100.0, Colors.green, '4'),
      _myContainer(50.0, 50.0, Colors.blue, '5'),
    ]
        //_myContainer2(),
        );
  }

  IndexedStack _myIndexedStack() {
    return IndexedStack(
      index: _index,
      children: [
        _myContainer(250.0, 250.0, Colors.amber, 'index 1'),
        _myContainer(250.0, 250.0, Colors.cyan, 'index 2'),
        _myContainer(250.0, 250.0, Colors.blue, 'index 3'),
        _myContainer(250.0, 250.0, Colors.red, 'index 4'),
      ],
    );
  }
}

Container _myContainer(
    [double height = 280.0,
    double width = 280.0,
    Color color = Colors.grey,
    String txt = '+']) {
  return Container(
    height: height,
    width: width,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: color,
    ),
    child: Text(txt),
  );
}
