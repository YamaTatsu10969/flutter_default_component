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
              Tab(text: 'Car'),
              Tab(text: 'Transit'),
              Tab(text: 'bike'),
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
