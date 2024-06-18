import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_component.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff4093CE),
            Color(0xff9BCEF3),
          ],
        ),
      ),
      child: const SplachComponent(),
    );
  }
}
