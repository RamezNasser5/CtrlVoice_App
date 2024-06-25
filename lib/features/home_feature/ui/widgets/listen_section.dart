import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/assistant_ai/assistant_ai_cubit.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/text_to_speech/text_to_speech_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListenSection extends StatelessWidget {
  const ListenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Listening...',
                  style: Styles.voicesStyle,
                ),
                BlocBuilder<SpeechToTextBloc, SpeechToTextState>(
                  builder: (context, state) {
                    if (state is SpeechToTextStartLoading ||
                        state is SpeechToTextEndLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is SpeechToTextStartSuccess) {
                      return Text(state.message);
                    } else if (state is SpeechToTextStartFailure) {
                      return Text('Error: ${state.message}');
                    } else if (state is SpeechToTextEndSuccess) {
                      BlocProvider.of<AssistantAiCubit>(context)
                          .processPrompt(state.message);
                      return Text('Final Result: ${state.message}');
                    } else if (state is SpeechToTextEndFailure) {
                      return Text('Error: ${state.message}');
                    } else {
                      return const Text('Press the button to start listening');
                    }
                  },
                ),
                BlocBuilder<AssistantAiCubit, AssistantAiState>(
                  builder: (context, state) {
                    if (state is AssistantAiLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is AssistantAiSuccess) {
                      BlocProvider.of<TextToSpeechCubit>(context)
                          .speakText(state.message);
                      return Text(state.message);
                    } else if (state is AssistantAiFailure) {
                      return Text(state.message);
                    } else {
                      return const Text('wait for prompt');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
