import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isDark = false;

  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    emit(ThemeChanged());
    if (_isDark) {
      emit(ThemeDark(
        message: "The theme is dark"
      ));
    } else {
      emit(ThemeLight(
          message: "The theme is light"
      ));
    }
  }
}
