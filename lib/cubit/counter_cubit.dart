import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:folder/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamApoints = 0;
  int teamBpoints = 0;
  void teamIncrement({required String teamName, required int buttonNumber}) {
    if (teamName == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
