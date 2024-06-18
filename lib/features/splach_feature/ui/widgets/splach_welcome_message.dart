import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplachWelcomeMessage extends StatelessWidget {
  const SplachWelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Welcome To',
          style: TextStyle(
            fontFamily: 'Jokerman',
            fontSize: 40,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.3,
          ),
          child: Row(
            children: [
              const Text(
                'CtrlVoice',
                style: TextStyle(
                  fontFamily: 'Jokerman',
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Image.asset('assets/images/ctrlvoice.png'),
            ],
          ),
        )
      ],
    );
  }
}
