// import 'dart:async';
//
// import 'package:bloc/bloc.dart';
// import 'package:hubstarr/features/theme_setting/theme_bloc/theme_event.dart';
// import 'package:hubstarr/features/theme_setting/theme_bloc/theme_state.dart';
// import 'package:hubstarr/features/theme_setting/view_models/theme_bloc/theme_event.dart';
// import 'package:hubstarr/features/theme_setting/view_models/theme_bloc/theme_state.dart';
// import 'package:theme/enum/dark_option.dart';
// import 'package:theme/theme.dart';
//
// const DARK_DYNAMIC = 'dynamic';
// const DARK_ALWAYS_OFF = 'off';
// const DARK_ALWAYS_ON = 'on';
//
// class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
//   ThemeBloc(ThemeState initialState) : super(initialState);
//
//   @override
//   ThemeState get initialState => InitialThemeState();
//
//   @override
//   Stream<ThemeState> mapEventToState(event) async* {
//     ///Update theme style and font
//     if (event is ChangeTheme) {
//       yield ThemeUpdating();
//
//       AppTheme.currentTheme = event.theme ?? AppTheme.currentTheme;
//       AppTheme.currentFont = event.font ?? AppTheme.currentFont;
//       AppTheme.darkThemeOption = event.darkOption ?? AppTheme.darkThemeOption;
//
//       ///Setup Theme with setting darkOption
//       switch (AppTheme.darkThemeOption) {
//         case DarkOption.dynamic:
//           AppTheme.lightTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.lightTheme,
//             font: AppTheme.currentFont,
//           );
//           AppTheme.darkTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.darkTheme,
//             font: AppTheme.currentFont,
//           );
//           break;
//         case DarkOption.alwaysOn:
//           AppTheme.lightTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.darkTheme,
//             font: AppTheme.currentFont,
//           );
//           AppTheme.darkTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.darkTheme,
//             font: AppTheme.currentFont,
//           );
//           break;
//         case DarkOption.alwaysOff:
//           AppTheme.lightTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.lightTheme,
//             font: AppTheme.currentFont,
//           );
//           AppTheme.darkTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.lightTheme,
//             font: AppTheme.currentFont,
//           );
//           break;
//         default:
//           AppTheme.lightTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.lightTheme,
//             font: AppTheme.currentFont,
//           );
//           AppTheme.darkTheme = CollectionTheme.getCollectionTheme(
//             theme: AppTheme.currentTheme.darkTheme,
//             font: AppTheme.currentFont,
//           );
//           break;
//       }
//
//       ///Preference save
//       UtilPreferences.setString(Preferences.theme, AppTheme.currentTheme.name);
//
//       ///Preference save
//       UtilPreferences.setString(Preferences.font, AppTheme.currentFont);
//
//       ///Preference save
//       switch (AppTheme.darkThemeOption) {
//         case DarkOption.dynamic:
//           UtilPreferences.setString(Preferences.darkOption, DARK_DYNAMIC);
//           break;
//         case DarkOption.alwaysOn:
//           UtilPreferences.setString(Preferences.darkOption, DARK_ALWAYS_ON);
//           break;
//         case DarkOption.alwaysOff:
//           UtilPreferences.setString(Preferences.darkOption, DARK_ALWAYS_OFF);
//           break;
//         default:
//           break;
//       }
//
//       ///Notification UI
//       yield ThemeUpdated();
//     }
//   }
// }
