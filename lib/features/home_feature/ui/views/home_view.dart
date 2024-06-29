import 'package:ctrlvoice/features/home_feature/data/models/voice_interaction_model.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_components.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (_) {
          VoiceInteractionModel.startSpeacking(context);
        },
        onPanEnd: (_) {
          VoiceInteractionModel.startAIProcessing(context);
        },
        onDoubleTap: () {
          VoiceInteractionModel.stopTextToSpeech(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
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
          child: const HomeComponents(),
        ),
      ),
    );
  }
}
