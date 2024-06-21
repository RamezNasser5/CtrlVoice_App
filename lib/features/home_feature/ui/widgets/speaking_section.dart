import 'package:awesome_icons/awesome_icons.dart';
import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/microphone_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpeakingSection extends StatelessWidget {
  const SpeakingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08,
              ),
              child: Row(
                children: [
                  const Text(
                    'Speaking...',
                    style: Styles.voicesStyle,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.03,
                  ),
                  MicrophoneButton(
                    colors: Colors.green,
                    icon: FontAwesomeIcons.microphone,
                    onTap: () {
                      BlocProvider.of<SpeechToTextBloc>(context)
                          .add(SpeechToTextStartEvent());
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.03,
                  ),
                  MicrophoneButton(
                    colors: Colors.red,
                    icon: FontAwesomeIcons.stopCircle,
                    onTap: () {
                      BlocProvider.of<SpeechToTextBloc>(context)
                          .add(SpeechToTextEndEvent());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
