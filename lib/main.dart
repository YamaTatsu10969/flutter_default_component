import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_component/dialog_page.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
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
            icon: Icon(Icons.message_rounded),
            label: 'Transition',
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
