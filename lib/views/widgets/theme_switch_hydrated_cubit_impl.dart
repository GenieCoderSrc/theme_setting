import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

class ThemeSwitchDarkModeHydratedCubitImpl extends StatelessWidget {
  const ThemeSwitchDarkModeHydratedCubitImpl({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.dark_mode_outlined,
        color: Colors.white,
      ),
      title: Text(
        'Dark Mode',
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.blueGrey[600],
            fontWeight: FontWeight.w600),
      ),
      trailing: BlocBuilder<DarkModeHydratedCubit, bool>(
        builder: (context, darkModeState) {
          return Switch(
            value: darkModeState,
            onChanged: (bool isDark) => context
                .read<DarkModeHydratedCubit>()
                .toggleDarkMode(isDark: isDark),
          );
        },
      ),
    );
  }
}
