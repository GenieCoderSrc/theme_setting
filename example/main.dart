import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:theme_setting/theme_setting.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBloc.storage = storage;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DarkModeHydratedCubit(),
      child: BlocBuilder<DarkModeHydratedCubit, bool>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
            home: ThemeSettingScreen(),
          );
        },
      ),
    );
  }
}

class ThemeSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme Setting Example')),
      body: Center(
        child: ThemeSwitchDarkMode(),
      ),
    );
  }
}

class ThemeSwitchDarkMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.dark_mode_outlined),
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
