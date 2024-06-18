import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplachDescriptionMessage extends StatelessWidget {
  const SplachDescriptionMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * 0.02,
      ),
      child: const Text(
        'Ctrl Voice is a specialized Visual Studio Code extension designed to empower visually impaired individuals in programming through enhanced accessibility features.',
        style: Styles.descriptionStyle,
      ),
    );
  }
}
