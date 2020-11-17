import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DialogsPage'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Simple dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text('Title'),
                        children: <Widget>[
                          // コンテンツ領域
                          SimpleDialogOption(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Content 1'),
                          ),
                          SimpleDialogOption(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Content 2'),
                          ),
                          SimpleDialogOption(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Content 3'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Alert dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete'),
                        content: const Text(
                            'Are you sure?Are you sure?Are you sure?Are you sure?'),
                        actions: <Widget>[
                          // ボタン領域
                          FlatButton(
                            child: const Text('Cancel'),
                            onPressed: () => Navigator.pop(context),
                          ),
                          FlatButton(
                            child: const Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              ElevatedButton(
                child: const Text('SnackBar'),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Hello world!'),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('SnackBar long text'),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
