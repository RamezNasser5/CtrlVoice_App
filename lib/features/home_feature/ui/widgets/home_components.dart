import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_logo.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/speaking_section.dart';
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
      ],
    );
  }
}
