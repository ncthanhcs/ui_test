import 'package:flutter/material.dart';

class TextMoney extends StatelessWidget {
  final String money;
  final String? unit;
  final double? fontSize;
  final Color? color;
  const TextMoney(
      {Key? key, required this.money, this.unit, this.fontSize, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: money,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: fontSize ?? 18, color: color ?? Colors.white)),
          TextSpan(
              text: ' ' + (unit ?? 'VNĐ'),
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: (fontSize ?? 18) * 2 / 3,
                  color: color ?? Colors.white))
        ],
      ),
    );
  }
}
