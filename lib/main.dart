import 'package:ctrlvoice/features/splach_feature/ui/views/splach_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CtrlVoice());
}

class CtrlVoice extends StatelessWidget {
  const CtrlVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplachView(),
    );
  }
}
