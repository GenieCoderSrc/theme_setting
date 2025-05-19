import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:provider/single_child_widget.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

// ---- Theme Setting bloc provider ------
late DarkModeHydratedCubit _darkModeHydratedCubit;

initLocationBlocProvider() {
  // ---- Theme Setting Cubit Init ------
  _darkModeHydratedCubit = sl<DarkModeHydratedCubit>();
}

disposeLocationBlocProvider() {
  // ---- Theme Setting Cubit Dispose ------
  _darkModeHydratedCubit.close();
}

List<SingleChildWidget> locationBlocProviders = [
  // ---- Theme Setting Cubit Bloc Provider ------
  BlocProvider<DarkModeHydratedCubit>(create: (BuildContext context) => _darkModeHydratedCubit),
];
