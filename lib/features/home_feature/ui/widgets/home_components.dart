import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/listen_section.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/speaking_section.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_final_component.dart';
import 'package:flutter/material.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const Expanded(
          flex: 1,
          child: CustomBackButton(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Expanded(
          flex: 1,
          child: Image.asset('assets/images/ctrlvoice.png'),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Expanded(
          flex: 2,
          child: Text(
            'CtrlVoice Assistant',
            style: Styles.welcomeStyle(context),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const SpeakingSection(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const ListenSection(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const SplachFinalComponent(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    );
  }
}
