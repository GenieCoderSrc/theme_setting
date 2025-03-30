// import 'dart:io';
//
// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:exceptions/exceptions.dart';
// import 'package:flutter/foundation.dart';
// import 'package:i_tdd/i_tdd.dart';
//
// import '../../domain/usecases/get_dark_mode_state.dart';
//
// part 'dark_mode_state.dart';
//
// class DarkModeCubit extends Cubit<DarkModeState> {
//   DarkModeCubit({required this.getDarkModeState}) : super(DarkModeInitial());
//
//   final GetDarkModeState getDarkModeState;
//
//   /// get dark mode user choice
//   Future<void> checkDarkModeOption() async {
//     try {
//       emit(DarkModeLoading());
//       final Either<IFailure, bool> eitherResponse =
//           await getDarkModeState(NoParams());
//
//       _checkGetDarkModeStateReport(eitherResponse);
//     } on SocketException catch (e) {
//       String message = e.message;
//       debugPrint(
//           'DarkModeCubit | checkDarkModeOption | SocketException error: ${e.toString()}');
//       emit(DarkModeLoadingFailed(message: message));
//     } catch (e) {
//       debugPrint(
//           'DarkModeCubit | checkDarkModeOption | error: ${e.toString()}');
//       emit(const DarkModeLoadingFailed(message: 'Ops! Something wrong'));
//     }
//   }
//
//   /// get dark mode report
//   _checkGetDarkModeStateReport(final Either<IFailure, bool> eitherResponse) {
//     eitherResponse.fold((IFailure l) {
//       // check error message
//       final String message = mapFailureToMessage(l);
//       debugPrint(
//           'DarkModeCubit | _checkGetDarkModeStateReport | \nerror: $message');
//       emit(DarkModeLoadingFailed(message: message));
//     }, (bool isEnabled) {
//       // check darkModeEntity
//       debugPrint(
//           'DarkModeCubit | _checkGetDarkModeStateReport | report:  $isEnabled');
//       emit(DarkModeLoaded(isDark: isEnabled));
//     });
//   }
// }
