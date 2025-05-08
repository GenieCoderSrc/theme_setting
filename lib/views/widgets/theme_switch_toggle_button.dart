import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

class ThemeSwitchToggleButton extends StatelessWidget {
  final IconData? enabledIcon;
  final IconData? disabledIcon;
  final Color? enabledIconColor;
  final Color? disabledIconColor;
  final void Function(bool isDark)? onToggle;

  const ThemeSwitchToggleButton({
    super.key,
    this.enabledIcon,
    this.disabledIcon,
    this.enabledIconColor,
    this.disabledIconColor,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkModeHydratedCubit, bool>(
      builder: (context, darkModeState) {
        final label = darkModeState ? 'Dark Mode' : 'Light Mode';

        return ListTile(
          leading: Icon(
            darkModeState
                ? enabledIcon ?? Icons.dark_mode
                : disabledIcon ?? Icons.light_mode,
            color: darkModeState
                ? (enabledIconColor ?? Colors.white)
                : (disabledIconColor ?? Colors.black),
          ),
          title: Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.blueGrey[600],
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Switch(
            value: darkModeState,
            onChanged: (bool isDark) {
              context
                  .read<DarkModeHydratedCubit>()
                  .toggleDarkMode(isDark: isDark);
              onToggle?.call(isDark);
            },
          ),
        );
      },
    );
  }
}
