import 'package:flutter/material.dart';

class MicrophoneButton extends StatelessWidget {
  const MicrophoneButton({
    super.key,
    required this.colors,
    required this.icon,
    this.onTap,
  });

  final Color colors;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(25),
          ),
          child: FittedBox(child: Icon(icon)),
        ),
      ),
    );
  }
}
