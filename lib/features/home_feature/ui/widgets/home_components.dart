import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_logo.dart';
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
        const CustomBackButton(),
        const HomeLogo(),
        const SpeakingSection(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const ListenSection(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        const SplachFinalComponent(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
      ],
    );
  }
}
