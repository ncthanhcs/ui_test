import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double? size;
  final VoidCallback callback;
  const CircleButton(
      {Key? key, required this.icon, this.size, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.all((size ?? 50) / 10)),
      child: Icon(
        icon,
        size: size ?? 50,
      ),
      onPressed: callback,
    );
  }
}
