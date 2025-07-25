import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:theme_setting/theme_setting.dart';

void main() {
  // Register the GetIt DI
  themeSettingGetItRegister();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<DarkModeHydratedCubit>(),
      child: BlocBuilder<DarkModeHydratedCubit, bool>(
        builder: (context, isDark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Setting Example',
            theme: isDark ? ThemeData.dark() : ThemeData.light(),
            home: const SettingsPage(),
          );
        },
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Setting Example'),
      ),
      body: const Center(
        child: ThemeSwitchToggleButton(),
      ),
    );
  }
}
