import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yt_bloc/app/routes/app_routes.dart';
import 'package:yt_bloc/domain/cubit/theme_cubit.dart';

import 'main.dart';

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider<ThemeCubit>(create: (_) => ThemeCubit())],
        child: Lava(router: AppRouter()));
  }
}
