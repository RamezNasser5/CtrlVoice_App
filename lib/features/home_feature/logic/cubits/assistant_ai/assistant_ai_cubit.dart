import 'package:ctrlvoice/features/home_feature/data/repo/home_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'assistant_ai_state.dart';

class AssistantAiCubit extends Cubit<AssistantAiState> {
  AssistantAiCubit() : super(AssistantAiInitial());

  HomeRepoImpl homeRepo = HomeRepoImpl();

  processPrompt(String prompt) async {
    emit(AssistantAiLoading());
    try {
      String responseData = await homeRepo.getResponseData(prompt);
      emit(AssistantAiSuccess(message: responseData));
    } catch (e) {
      emit(AssistantAiFailure(message: e.toString()));
    }
  }
}
