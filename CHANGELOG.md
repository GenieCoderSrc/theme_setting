# Changelog

All notable changes to this project will be documented in this file.

## 0.1.1

### Sep 12, 2025

### ✨ Updated

- Added variables `labelColor`, `activeThumbColor`, `inactiveThumbColor`, in the `ThemeSwitchToggleButton`.

## 0.1.0

### Aug 22, 2025

### ✨ Updated

- Updated provider version as provider: ^6.1.5+1
- Updated `get_it_di_global_variable` to 0.0.6
- Updated Dart sdk to 3.9.0
- Removed `flutter_lints` Dependency

## 0.0.9

### Aug 11, 2025

### Removed

- ✅ Removed `build_runner` `json_serializable` dependency

## 0.0.8

### Jun 27, 2025

### Added

- ✅ AppThemeBuilder to apply theme brightness via BlocBuilder.

### Removed

- ✅ Removed `supportedThemeName` enum.

## 0.0.7+1

### Jun 27, 2025

### Changed

- ✅ Used `BlocProvider.value` to Register `DarkModeHydratedCubit` in the Bloc Provider.
- ✅ Renamed di to dependency_injection

## 0.0.7

- ✅ Update Register Theme Setting Bloc Provider.

## 0.0.6

- ✅ Added Register Theme Setting Bloc Provider.

## 0.0.5

- ✅ Added BrightnessExtension For `Light/Dark` mode checker.

## 0.0.4

- ✅ Rename ThemeSwitchDarkModeHydratedCubitImpl to ThemeSwitchToggleButton.

## 0.0.3

- ✅ Provided `ThemeSwitchDarkModeHydratedCubitImpl` widget for UI toggle.

## 0.0.2

- ✅ Added `DarkModeHydratedCubit` for persistent dark mode management.
- ✅ Integrated with `hydrated_bloc` for automatic state restoration.
- ✅ Included JSON color utility class `JsonColorUtil`.
- ✅ Support for custom `SupportedThemeName` enum.
- ✅ Exported useful BLoC files for external use.
- ✅ Added `get_it` registration function for dependency injection convenience.

This release establishes the foundation for future theme management features.

## 0.0.1

### 🎉 Initial Release

