// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:exceptions/exceptions.dart';
// import 'package:flutter/foundation.dart';
//
// import '../../domain/usecases/set_dark_mode_state.dart';
//
// part 'toggle_dark_mode_state.dart';
//
// class ToggleDarkModeCubit extends Cubit<ToggleDarkModeState> {
//   ToggleDarkModeCubit({required this.setDarkModeState})
//       : super(ToggleDarkModeInitial());
//
//   final SetDarkModeState setDarkModeState;
//
//   /// input dark mode toggle value
//   Future<void> onChangeSwitch(bool isOn) async {
//     await submitToggleDarkMode(isOn);
//   }
//
//   /// set dark mode user choice to cache memory
//   Future<void> submitToggleDarkMode(bool isEnabled) async {
//     try {
//       emit(ToggleDarkModeUpdating());
//       final Either<IFailure, bool> eitherResponse =
//           await setDarkModeState(isEnabled);
//
//       _checkSetDarkModeStateReport(eitherResponse);
//     } on SocketException catch (e) {
//       String message = e.message;
//       debugPrint(
//           'DarkModeCubit | submitToggleDarkMode | SocketException error: ${e.toString()}');
//       emit(ToggleDarkModeUpdatingFailed(message: message));
//     } catch (e) {
//       debugPrint(
//           'DarkModeCubit | submitToggleDarkMode | error: ${e.toString()}');
//       emit(const ToggleDarkModeUpdatingFailed(message: 'Ops! Something wrong'));
//     }
//   }
//
//   /// check Report
//   /// set dark mode report
//   _checkSetDarkModeStateReport(final Either<IFailure, bool> eitherResponse) {
//     eitherResponse.fold((IFailure l) {
//       // check error message
//       final String message = mapFailureToMessage(l);
//       debugPrint(
//           'DarkModeCubit | checkSetDarkModeStateReport | \nerror: $message');
//       emit(ToggleDarkModeUpdatingFailed(message: message));
//     }, (bool isUpdated) {
//       // check isUpdated
//       debugPrint(
//           'DarkModeCubit | checkSetDarkModeStateReport | report:  $isUpdated');
//       emit(ToggleDarkModeUpdated(isUpdated: isUpdated));
//     });
//   }
// }
