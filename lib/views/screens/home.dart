import 'dart:developer';

import 'package:block_provider/controller/get_data_controller.dart';
import 'package:block_provider/utils/route_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
          centerTitle: true,
        ),
        body: BlocBuilder<Cart_Controller, Map>(
          builder: (context, state) => FutureBuilder(
            future: context.read<Cart_Controller>().getData(),
            builder: (context, snap) {
              if (snap.hasData) {
                List data = snap.data['products'];
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamed(MyRoutes.detail, arguments: data[index]),
                      leading: CircleAvatar(
                        child: Text((index + 1).toString()),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      title: Text(data[index]['title']),
                    ),
                  ),
                );
              } else if (snap.hasError) {
                return Center(
                  child: Text(snap.error.toString()),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}
