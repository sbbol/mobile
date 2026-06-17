import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme.dart';
import 'core/navigation/navigation_cubit.dart';
import 'core/navigation/navigation_shell.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: MaterialApp(
        title: 'СберБизнес',
        theme: AppTheme.lightTheme,
        home: const NavigationShell(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}