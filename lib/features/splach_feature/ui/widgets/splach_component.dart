import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_view_logo.dart';
import 'package:flutter/material.dart';

class SplachComponent extends StatelessWidget {
  const SplachComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        const SplachViewLogo(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const Text('data'),
      ],
    );
  }
}
