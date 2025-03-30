import 'package:hydrated_bloc/hydrated_bloc.dart';

class DarkModeHydratedCubit extends HydratedCubit<bool> {
  DarkModeHydratedCubit() : super(false);

  void toggleDarkMode({required bool isDark}) => emit(isDark);

  @override
  bool? fromJson(Map<String, dynamic> json) => json['isDark'];

  @override
  Map<String, dynamic>? toJson(bool state) => {'isDark': state};
}
