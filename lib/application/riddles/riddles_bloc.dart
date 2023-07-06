import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:riddles/respository/riddles_respository.dart';

part 'riddles_event.dart';
part 'riddles_state.dart';

class RiddlesBloc extends Bloc<RiddlesEvent, RiddlesState> {
  RiddlesBloc() : super(RiddlesInitial(isLoading: false)) {
    on<FeatchApiEvent>((event, emit) async {
      emit(RiddlesState(isLoading: true));
      final data = await RiddlesRespository.fetchRiddlesApi();
      emit(RiddlesState(isLoading: false, result: data));
    });
  }
}
