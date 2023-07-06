part of 'riddles_bloc.dart';

class RiddlesState {
  final bool isLoading;
  final String? result;

  RiddlesState({required this.isLoading, this.result});
}

class RiddlesInitial extends RiddlesState {
  RiddlesInitial({required super.isLoading});
}
