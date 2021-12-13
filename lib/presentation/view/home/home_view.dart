import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yt_bloc/domain/cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            if (state is ThemeDark) {
              return const Text("The theme is dark");
            }
            if (state is ThemeLight) {
              return const Text("The theme is light");
            }
            return const Text("");
          },
        ),
      ),
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          if (state is ThemeDark) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
          if (state is ThemeLight) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: SizedBox(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                themeCubit.toggleTheme();
              },
              child: const Text("Toggle theme"),
            ),
          ),
        ),
      ),
    );
  }
}
