import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_one/app/controllers/heros_controller.dart';
import 'package:provider_one/app/views/home_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HerosController>.value(value: HerosController())
      ],
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
