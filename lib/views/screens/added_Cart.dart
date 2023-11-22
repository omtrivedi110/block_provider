import 'dart:developer';

import 'package:block_provider/controller/list_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Added_Cart extends StatelessWidget {
  const Added_Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Products"),
        centerTitle: true,
      ),
      body: BlocBuilder<List_Controller, List<Map>>(
        buildWhen: (pstate, state) {
          return pstate.length > state.length;
        },
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) => ListTile(
                title: Text(state[index]['title']),
                trailing: IconButton(
                  onPressed: () =>
                      context.read<List_Controller>().remove(index: index),
                  icon: const Icon(Icons.delete_forever),
                )),
          );
        },
      ),
    );
  }
}
