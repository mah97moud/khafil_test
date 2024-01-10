import 'package:bloc/bloc.dart';


class StepperCubit extends Cubit<int> {
  StepperCubit() : super(1);

  void onStepReached(int index) {
    emit(index);
  }

  void onStepUnreached(int index) {
    emit(index);
  }

  void nextStep() {
    emit(state + 1);
  }

  void previousStep() {
    emit(state - 1);
  }
}
