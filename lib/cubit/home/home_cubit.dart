import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeCubitInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  String homeText = "Hello there";
  Color homeColor = Colors.black;

  changeBackgroundColor() {
    homeColor = randomColor();
    emit(HomeCubitChangeBackgroundColor());
  }

  Color randomColor() {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }
}
