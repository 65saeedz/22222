import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          home: const HomePage(),
          title: 'Flutter Demo',
          theme: state.status == ThemeStatus.dark
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                int rndnum = Random().nextInt(10);
                context.read<ThemeBloc>().add(ChangeThemeEvent(rndnum: rndnum));
              },
              child: const Text('change theme'))),
    );
  }
}
