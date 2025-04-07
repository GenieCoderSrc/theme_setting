import 'package:get_it_di_global_variable/get_it_di.dart';
import 'package:theme_setting/theme_setting.dart';

void themeSettingGetItRegister() {
  /// -----------------Theme Setting --------------
  sl.registerLazySingleton(() => DarkModeHydratedCubit());
}
