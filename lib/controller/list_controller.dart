import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class List_Controller extends Cubit<List<Map>> {
  List_Controller(super.initialState);
  List<Map> add(Map data) {
    (state.contains(data)) ? null : state.add(data);
    return state;
  }

  List<Map> remove({int? index, Map? data}) {
    (index == null) ? state.remove(data) : state.removeAt(index);
    return state;
  }
}
