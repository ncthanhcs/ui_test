import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemGridView extends StatelessWidget {
  final String text;
  final String image;
  const ItemGridView({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 2 / 1,
            child: ImageIcon(AssetImage(image), color: Colors.white)),
        Text(text,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 15, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center)
      ],
    );
  }
}
