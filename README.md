# theme_setting

A lightweight and customizable Flutter package for managing app themes and dark mode, featuring persistent state management using `hydrated_bloc`. It provides a dark mode toggle widget, theme enum support, and JSON color utilities.

---

## ✨ Features

- Toggle dark mode with state persistence
- Hydrated BLoC integration
- Singleton-based color conversion utility
- `get_it` integration for dependency injection
- Easy-to-use widget for theme switching

---

## 🚀 Getting Started

### Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  theme_setting: ^0.0.4
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

### 3. Apply Theme Based on Cubit State

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

---

## 🌈 Supported Themes

```dart
enum SupportedThemeName {
  primary,
  green,
  brown,
  pink,
  orange,
}
```

You can expand on this enum to support custom themes in your app.

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
```

---

## 📢 Contributions

Contributions and issues are welcome! Feel free to fork the repository and make pull requests.

---

## 📚 License

MIT License. See [LICENSE](LICENSE) for details.

