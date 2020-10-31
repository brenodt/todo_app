import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({
    Key key,
    @required this.title,
    this.subtitle='',
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 500,
      height: 150,
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title, style: textTheme.headline5),
              Text(subtitle, style: textTheme.headline6),
            ],
          ),
        ),
      ),
    );
  }
}
