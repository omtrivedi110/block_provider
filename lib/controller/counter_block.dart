import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class Counter_Block extends Cubit<int> {
  Counter_Block() : super(0);

  void increase_State() => emit(state + 1);
}
