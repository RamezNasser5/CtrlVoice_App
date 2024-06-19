part of 'assistant_ai_cubit.dart';

@immutable
sealed class AssistantAiState {}

final class AssistantAiInitial extends AssistantAiState {}

final class AssistantAiLoading extends AssistantAiState {}

final class AssistantAiSuccess extends AssistantAiState {
  final String message;

  AssistantAiSuccess({required this.message});
}

final class AssistantAiFailure extends AssistantAiState {
  final String message;

  AssistantAiFailure({required this.message});
}
