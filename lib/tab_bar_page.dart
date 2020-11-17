import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBarPage'),
          bottom: const TabBar(
            tabs: [
              Tab(text: '聴き逃し'),
              Tab(text: '番組'),
              Tab(text: '視聴履歴'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
