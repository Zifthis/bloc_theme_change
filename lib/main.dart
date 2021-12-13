import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yt_bloc/app/routes/app_routes.dart';
import 'package:yt_bloc/domain/cubit/theme_cubit.dart';
import 'custom_bloc_provider.dart';

void main() {
  runApp(
    const Core(),
  );
}

class Lava extends StatelessWidget {
  final AppRouter router;

  const Lava({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: "/",
      onGenerateRoute: router.generateRoute,
    );
  }
}
