import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_component/dialog_page.dart';
import 'package:flutter_default_component/tab_bar_page.dart';
import 'package:flutter_default_component/text_page.dart';
import 'package:flutter_default_component/transition_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Default Component',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainBottomBarPage(),
    );
  }
}

class MainBottomBarPage extends StatefulWidget {
  @override
  _MainBottomBarPageState createState() => _MainBottomBarPageState();
}

class _MainBottomBarPageState extends State<MainBottomBarPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pageList = [
    TextPage(),
    DialogPage(),
    TransitionPage(),
    TabBarPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.text_rotation_angledown_outlined),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outlined),
            label: 'Dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_transit),
            label: 'Transition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            label: 'Tab bar',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key key, this.title, this.description}) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(description),
        ),
      ),
    );
  }
}
