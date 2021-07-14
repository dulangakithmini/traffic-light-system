import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traffic_light_system/src/screens/bloc/home_bloc.dart';
import 'package:traffic_light_system/src/widgets/light.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traffic Light System'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (ctx, state) {
          return Column(
            children: [
              Light(color: Colors.red, isOn: state.isRedOn),
              Light(color: Colors.yellow, isOn: state.isYellowOn),
              Light(color: Colors.green, isOn: state.isGreenOn),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(ctx).add(StopEvent());
                        },
                        child: Text('Stop, git check'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(ctx).add(ReadyToGoEvent());
                        },
                        child: Text('Ready to Go'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(ctx).add(GoEvent());
                        },
                        child: Text('Go'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(ctx)
                              .add(ReadyToStopEvent());
                        },
                        child: Text('Ready to Stop'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  gitCheck() {}
}
