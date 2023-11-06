import 'package:block_provider/Helpers/cart_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart_Controller extends Cubit<Map> {
  Cart_Controller() : super({});

  Future getData() async {
    state.addAll(await Cart_helper.cart_helper.getApi());
    return state;
  }
}
