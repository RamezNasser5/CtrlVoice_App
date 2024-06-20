import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const FittedBox(
        child: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Color(0xff4093CE),
        ),
      ),
    );
  }
}
