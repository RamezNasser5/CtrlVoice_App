import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Image.asset('assets/images/ctrlvoice.png'),
          Text(
            'CtrlVoice Assistant',
            style: Styles.descriptionStyle(context).copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.09,
            ),
          ),
        ],
      ),
    );
  }
}
