import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/listen_section.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_final_component.dart';
import 'package:flutter/material.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 42),
        const Expanded(
          flex: 1,
          child: CustomBackButton(),
        ),
        const SizedBox(height: 24),
        Expanded(
          flex: 2,
          child: Image.asset('assets/images/ctrlvoice.png'),
        ),
        const SizedBox(height: 32),
        Expanded(
          flex: 3,
          child: Text(
            'CtrlVoice Assistant',
            style: Styles.welcomeStyle(context),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 32),
        //const SpeakingSection(),
        const ListenSection(),
        const SizedBox(height: 72),
        const SplachFinalComponent(),
        const SizedBox(height: 14),
      ],
    );
  }
}
