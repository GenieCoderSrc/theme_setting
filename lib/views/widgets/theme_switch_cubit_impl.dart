// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:theme_setting/view_models/toggle_dark_mode/toggle_dark_mode_cubit.dart';
// import 'package:widgets/switch/app_switch.dart';
//
// import '../../view_models/dark_mode_cubit/dark_mode_cubit.dart';
//
// class ThemeSwitchCubitImpl extends StatelessWidget {
//   const ThemeSwitchCubitImpl({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         const Row(
//           children: [
//             Icon(Icons.dark_mode_outlined),
//             Text('Dark Mode'),
//           ],
//         ),
//         SizedBox(
//           height: 50,
//           child: BlocBuilder<DarkModeCubit, DarkModeState>(
//             bloc: context.read<DarkModeCubit>()..checkDarkModeOption(),
//             buildWhen: (prev, current) =>
//                 current != prev && current is DarkModeLoaded,
//             builder: (context, darkModeState) {
//               if (darkModeState is DarkModeLoaded) {
//                 return AppSwitch(
//                   initSwitched: darkModeState.isDark,
//                   onChanged: (bool isDark) => context
//                       .read<ToggleDarkModeCubit>()
//                       .onChangeSwitch(isDark),
//                 );
//               }
//               return Container();
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
