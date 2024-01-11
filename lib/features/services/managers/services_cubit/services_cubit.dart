import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:khafil_test/core/helpers/result.dart';

import '../../data/models/service_model/datum.dart';
import '../../repos/service_repo.dart';

part 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit(this._serviceRepo) : super(const ServicesInitial());

  final ServiceRepo _serviceRepo;

  Future<void> getServices() async {
    emit(const ServicesLoading());

    final result = await _serviceRepo.services();

    result.when(success: (data) {
      emit(ServicesLoaded(data: data));
    }, failure: (ex, message) {
      emit(ServicesError(error: message));
    });
  }
}
