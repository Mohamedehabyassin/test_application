import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/cubit/home/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: homeCubit.homeColor,
          body: InkWell(
            onTap: homeCubit.changeBackgroundColor,
            child: Center(
              child: Text(
                homeCubit.homeText,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        );
      },
    );
  }
}
