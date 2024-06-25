import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplachWelcomeMessage extends StatelessWidget {
  const SplachWelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Welcome To',
          style: Styles.welcomeStyle(context),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.27,
          ),
          child: Row(
            children: [
              Text(
                'CtrlVoice',
                style: Styles.welcomeStyle(context),
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset('assets/images/ctrlvoice.png'),
            ],
          ),
        )
      ],
    );
  }
}
