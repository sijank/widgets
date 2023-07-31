import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeBottomNav extends StatefulWidget {
  const MyHomeBottomNav({super.key});

  @override
  State<MyHomeBottomNav> createState() => _MyHomeBottomNavState();
}

class _MyHomeBottomNavState extends State<MyHomeBottomNav> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _loadbottomBarIndex();

    debugPrint('$_selectedIndex');
  }

  final List<String> _link = ["home", "uiux", 'packages'];

  Future<void> _setBottomBarIndex(index) async {
    // Get the SharedPreferences instance.
    final prefs = await SharedPreferences.getInstance();
    debugPrint('$index');
    setState(() {
      prefs.setInt('_selectedIndex', index);
    });
  }

  Future<void> _loadbottomBarIndex() async {
    final prefs = await SharedPreferences.getInstance();
    //Return int
    setState(() {
      _selectedIndex = (prefs.getInt('_selectedIndex') ?? 0);
    });
    debugPrint('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: 'Widgets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: 'UI/UX',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact_alt_rounded),
            label: 'Examples',
          ),
        ],
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        // unselectedItemColor: Colors.deepOrangeAccent,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        // type: BottomNavigationBarType.shifting,
        // selectedIconTheme: IconThemeData(color: Colors.lightBlueAccent),
        currentIndex:
            _selectedIndex, // checkIntValuesSF() ? getIntValuesSF() : 0,
        // selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: (index) async {
          _setBottomBarIndex(index);
          debugPrint('Bottom Nav Index - ${_link[index]}');
          await Navigator.pushNamed(context, '/${_link[index]}');
        },
        elevation: 5);
  }
}
