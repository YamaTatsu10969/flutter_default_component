import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class TransitionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransitionPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlatButton(
              child: const Text('Push'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(
                      title: 'Push',
                      description: 'Push transition',
                    ),
                  ),
                );
              },
            ),
            TextButton(
              child: const Text('iOS push'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const DetailPage(
                      title: 'iOS Push',
                      description: 'Push transition',
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: const Text('Modal'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(
                      title: 'Modal',
                      description: 'Modal transition',
                    ),
                    fullscreenDialog: true,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
