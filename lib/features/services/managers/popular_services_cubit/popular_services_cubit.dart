import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:khafil_test/core/helpers/result.dart';
import 'package:khafil_test/features/services/repos/service_repo.dart';

import '../../data/models/service_model/datum.dart';

part 'popular_services_state.dart';

class PopularServicesCubit extends Cubit<PopularServicesState> {
  PopularServicesCubit(this._serviceRepo)
      : super(const PopularServicesInitial());

  final ServiceRepo _serviceRepo;

  Future<void> getPopularServices() async {
    emit(const PopularServicesLoading());

    final result = await _serviceRepo.popularServices();

    result.when(success: (data) {
      emit(PopularServicesLoaded(data: data));
    }, failure: (ex, message) {
      emit(PopularServicesError(error: message));
    });
  }
}
