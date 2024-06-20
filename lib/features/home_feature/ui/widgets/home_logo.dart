import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
        Image.asset('assets/images/ctrlvoice.png'),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
        Text(
          'CtrlVoice Assistant',
          style: Styles.descriptionStyle.copyWith(
            fontSize: MediaQuery.of(context).size.width * 0.09,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.1,
        ),
      ],
    );
  }
}
