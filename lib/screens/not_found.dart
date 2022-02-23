import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page not found',
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 20)),
    );
  }
}
