# Theme Setting

A Flutter package for managing theme settings, including dark mode persistence using HydratedCubit. This package simplifies theme management with Bloc and HydratedBloc, ensuring user preferences are retained across app sessions.

## Features
- Dark mode toggle with state persistence.
- Support for multiple theme colors.
- Utility functions for JSON color conversion.

## Installation
Add this to your `pubspec.yaml`:

```yaml
dependencies:
  theme_setting: latest_version
```

Then run:
```sh
flutter pub get
```

## Usage

### Registering Theme Cubit with GetIt

```dart
import 'package:global/get_it_di.dart';
import 'package:theme_setting/theme_setting.dart';

void themeSettingGetItRegister() {
  sl.registerLazySingleton(() => DarkModeHydratedCubit());
}
```

### Theme Toggle Implementation

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';

class ThemeSwitchDarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.dark_mode_outlined),
      title: Text('Dark Mode'),
      trailing: BlocBuilder<DarkModeHydratedCubit, bool>(
        builder: (context, darkModeState) {
          return Switch(
            value: darkModeState,
            onChanged: (bool isDark) {
              context.read<DarkModeHydratedCubit>().toggleDarkMode(isDark: isDark);
            },
          );
        },
      ),
    );
  }
}
```

### Supported Themes
```dart
enum SupportedThemeName {
  primary,
  green,
  brown,
  pink,
  orange,
}
```

### JSON Color Utility
```dart
import 'package:flutter/material.dart';

class JsonColorUtil {
  static Color convertJsonToColor(Map<String, dynamic> json) =>
      json['color'] as Color? ?? Colors.black;

  static Map<String, dynamic> convertColorToJson(Color? color) =>
      {'color': color ?? Colors.black};
}
```

## License
This package is released under the MIT License.

