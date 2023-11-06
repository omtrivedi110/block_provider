import 'package:block_provider/controller/get_data_controller.dart';
import 'package:block_provider/controller/counter_block.dart';
import 'package:block_provider/controller/list_controller.dart';
import 'package:block_provider/utils/route_utils.dart';
import 'package:block_provider/views/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'views/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => Cart_Controller(),
        child: const Home(),
      ),
      title: 'Block Provider',
      routes: {
        MyRoutes.detail: (context) => BlocProvider(
              create: (_) => List_Controller([]),
              child: DetailPage(),
            ),
      },
    );
  }
}
