import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

class AppThemeBuilder extends StatelessWidget {
  final Widget child;

  const AppThemeBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeHydratedCubit, bool>(
      builder: (_, isDarkMode) {
        debugPrint(
          'AppThemeBuilder | build | DarkModeHydratedCubit isDarkMode: $isDarkMode',
        );

        return child;
      },
    );
  }
}
