import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                BlocProvider.of<SpeechToTextBloc>(context)
                    .add(SpeechToTextStartEvent());
              },
              child: const Text('Listen'),
            ),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<SpeechToTextBloc>(context)
                    .add(SpeechToTextEndEvent());
              },
              child: const Text('Stop'),
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
                  return Text('Final Result: ${state.message}');
                } else if (state is SpeechToTextEndFailure) {
                  return Text('Error: ${state.message}');
                } else {
                  return const Text('Press the button to start listening');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
