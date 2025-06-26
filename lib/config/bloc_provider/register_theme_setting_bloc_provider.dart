import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:provider/single_child_widget.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

// ---- Theme Setting bloc provider ------
late DarkModeHydratedCubit _darkModeHydratedCubit;
// late ToggleDarkModeCubit _toggleDarkModeCubit;
// late DarkModeCubit _darkModeCubit;
// late ThemeBloc _themeBloc;

initThemeSettingBlocProvider() {
  // ---- Theme Setting Cubit Init ------
  _darkModeHydratedCubit = sl<DarkModeHydratedCubit>();

  // _toggleDarkModeCubit = sl<ToggleDarkModeCubit>();
  // _darkModeCubit = sl<DarkModeCubit>();
  // _themeBloc = sl<ThemeBloc>();
}

disposeThemeSettingBlocProvider() {
  // ---- Theme Setting Cubit Dispose ------
  _darkModeHydratedCubit.close();
}

List<SingleChildWidget> themeSettingBlocProviders = [
  // ---- Theme Setting Cubit Bloc Provider ------
  BlocProvider<DarkModeHydratedCubit>.value(value: _darkModeHydratedCubit),
];
