import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_description_message.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_final_component.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_view_logo.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_welcome_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplachComponent extends StatelessWidget {
  const SplachComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.14,
        ),
        const SplachViewLogo(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const SplachWelcomeMessage(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const SplachDescriptionMessage(),
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
