import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_light_system/src/screens/bloc/home_bloc.dart';

import 'screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<HomeBloc>(
        create: (ctx) => HomeBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
