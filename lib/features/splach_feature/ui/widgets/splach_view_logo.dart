import 'package:flutter/material.dart';

class SplachViewLogo extends StatelessWidget {
  const SplachViewLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.white,
          ),
          child: Center(
            child: Image.asset('assets/images/vscode.png'),
          ),
        ),
      ),
    );
  }
}
