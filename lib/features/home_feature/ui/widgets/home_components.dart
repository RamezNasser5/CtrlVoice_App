import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:flutter/material.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomBackButton(),
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
        )
      ],
    );
  }
}
