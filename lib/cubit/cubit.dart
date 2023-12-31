import 'package:bloc/bloc.dart';

part 'states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterStates());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String team, required int buttonNumber})
  {
    if(team == "A")
    {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void ResetTeamAButton()
  {
    teamAPoints =0;
    emit(CounterResetState());
  }

  void ResetTeamBButton()
  {
    teamBPoints =0;
    emit(CounterResetState());
  }
}
