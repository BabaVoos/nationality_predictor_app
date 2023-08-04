import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nationality_prediction/constants/Themes.dart';
import 'package:nationality_prediction/persentation/screens/home_screen.dart';

import 'cubit/nationalize_cubit.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  getNationalizeInit();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NationalizeGetIt<NationalizeCubit>(),)
      ],
      child:  MaterialApp(
        theme: AppThemes.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const NationalizeHomeScreen(),
      ),
    );
  }
}
