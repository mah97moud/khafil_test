import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:khafil_test/core/helpers/result.dart';
import 'package:khafil_test/features/who_i_am/repos/who_i_am_repo.dart';

import '../../data/model/who_i_am_model/data.dart';

part 'who_i_am_state.dart';

class WhoIAmCubit extends Cubit<WhoIAmState> {
  WhoIAmCubit(this._whoIAmRepo) : super(const WhoIAmInitial());

  final WhoIAmRepo _whoIAmRepo;

  Future<void> whoAmI() async {
    emit(const WhoIAmLoading());
    final result = await _whoIAmRepo.whoAmI();
    result.when(
      success: (whoIAm) {
        emit(WhoIAmLoaded(whoIAm: whoIAm));
      },
      failure: (ex, message) {
        emit(WhoIAmFailure(message: message));
      },
    );
  }
}
