import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextPage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'headline1',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'headline2',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'headline3',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'headline4',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'headline5',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'headline6',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'bodyText1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'bodyText2',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'subtitle1',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'subtitle2',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                'button',
                style: Theme.of(context).textTheme.button,
              ),
              Text(
                'caption',
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(height: 32),
              Text(
                '''         The 2018 spec has thirteen text styles:
                   NAME         SIZE  WEIGHT  SPACING
                   headline1    96.0  light   -1.5
                   headline2    60.0  light   -0.5
                   headline3    48.0  regular  0.0
                   headline4    34.0  regular  0.25
                   headline5    24.0  regular  0.0
                   headline6    20.0  medium   0.15
                   subtitle1    16.0  regular  0.15
                   subtitle2    14.0  medium   0.1
                   body1        16.0  regular  0.5   (bodyText1)
                   body2        14.0  regular  0.25  (bodyText2)
                   button       14.0  medium   1.25
                   caption      12.0  regular  0.4
                   overline     10.0  regular  1.5''',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 32),
              describeWidget(context, 'TextField', const TextField()),
              describeWidget(
                  context, 'CupertinoTextField', const CupertinoTextField()),
              describeWidget(context, 'TextFormField', TextFormField()),
              describeWidget(
                context,
                'CustomTextField',
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'hintText',
                    labelText: 'labelText',
                  ),
                ),
              ),
              describeWidget(
                context,
                'CustomTextField2',
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'hintText',
                    labelText: 'labelText',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget describeWidget(BuildContext context, String name, Widget child) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Theme.of(context).textTheme.bodyText1),
          const SizedBox(height: 4),
          child,
        ],
      ),
    );
  }
}
