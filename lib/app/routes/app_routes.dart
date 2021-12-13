import 'package:flutter/material.dart';
import 'package:yt_bloc/domain/cubit/theme_cubit.dart';
import 'package:yt_bloc/presentation/view/home/home_view.dart';

class AppRouter {
  late ThemeCubit themeCubit;

  AppRouter() {
    themeCubit = ThemeCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        {
          return MaterialPageRoute(builder: (_) => const HomeView());
        }
    }
  }
}
