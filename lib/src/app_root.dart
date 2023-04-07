import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/cubit/home/home_cubit.dart';
import 'package:test_application/modules/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeCubit()),
        ],
        child: const MaterialApp(
          title: 'Test application',
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ));
  }
}
