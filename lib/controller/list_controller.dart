import 'package:flutter_bloc/flutter_bloc.dart';

class List_Controller extends Cubit<List<Map>> {
  List_Controller(super.initialState);
  List<Map> add(Map data) {
    state.add(data);
    return state;
  }
}
