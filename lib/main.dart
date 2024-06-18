import 'package:flutter/material.dart';

void main() {
  runApp(const CtrlVoice());
}

class CtrlVoice extends StatelessWidget {
  const CtrlVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text('CtrlVoice'),
      ),
    );
  }
}
