import 'package:bloc/bloc.dart';

class CountriesPaginationCubit extends Cubit<int> {
  CountriesPaginationCubit() : super(1);

  void setPage(int page) => emit(page);
}
