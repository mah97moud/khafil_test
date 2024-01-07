import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart' show debugPrint;

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('''
    Bloc :---> $bloc 
    Change :---> $change
    ''');
  }
}
