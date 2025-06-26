# theme_setting

A lightweight and customizable Flutter package for managing app themes and dark mode, featuring persistent state management using `hydrated_bloc`. It provides a dark mode toggle widget, theme enum support, JSON color utilities, and a builder widget for applying theme-aware UI.

---

## ✨ Features

* Toggle dark mode with state persistence
* Hydrated BLoC integration
* Singleton-based color conversion utility
* `get_it` integration for dependency injection
* Easy-to-use widget for theme switching
* Builder widget (`AppThemeBuilder`) to apply theme-aware UI

---

## 🚀 Getting Started

### Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  theme_setting: <latest_version>
```

---

## 🔧 Usage

### 1. Register the Theme Cubit

```dart
import 'package:global/get_it_di.dart';
import 'package:theme_setting/theme_setting.dart';

void themeSettingGetItRegister() {
  sl.registerLazySingleton(() => DarkModeHydratedCubit());
}
```

### 2. Use the Theme Switch Widget

```dart
import 'package:theme_setting/theme_setting.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeSwitchDarkModeHydratedCubitImpl(),
    );
  }
}
```

### 3. Apply Theme Based on Cubit State (Manual Integration)

```dart
BlocBuilder<DarkModeHydratedCubit, bool>(
  builder: (context, isDark) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: MyHomePage(),
    );
  },
);
```

### 4. Use `AppThemeBuilder` for Theme-Aware Widgets

```dart
import 'package:theme_setting/theme_setting.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppThemeBuilder(
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
```

`AppThemeBuilder` listens to `DarkModeHydratedCubit` and rebuilds the widget tree when dark mode changes.

---

## 🔄 Color JSON Utility

```dart
final colorJson = JsonColorUtil.convertColorToJson(Colors.blue);
final color = JsonColorUtil.convertJsonToColor(colorJson);
```

---

## 📦 Exports

```dart
export 'theme_bloc.dart';
export 'theme_event.dart';
export 'theme_state.dart';
export 'package:theme_setting/view_models/dark_mode_hydrated_cubit/dark_mode_hydrated_cubit.dart';
export 'package:theme_setting/widgets/theme_switch_dark_mode_hydrated_cubit_impl.dart';
export 'package:theme_setting/widgets/app_theme_builder.dart';
```

---

## 📢 Contributions

Contributions and issues are welcome! Feel free to fork the repository and make pull requests.

---

## 📚 License

MIT License. See [LICENSE](LICENSE) for details.
