import 'package:ctrlvoice/features/home_feature/ui/widgets/back_button.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_logo.dart';
import 'package:flutter/material.dart';

class HomeComponents extends StatelessWidget {
  const HomeComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomBackButton(),
        HomeLogo(),
        SpeakingSection(),
      ],
    );
  }
}

class SpeakingSection extends StatelessWidget {
  const SpeakingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
