import 'package:flutter/material.dart';
import 'package:netfliex_clone/application/downloads/downloads_bloc.dart';
import 'package:netfliex_clone/core/constaints.dart';
import 'package:netfliex_clone/domain/di/injectable.dart';
import 'screen/main_homescreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kbackgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: MainHomeScreen(),
      ),
    );
  }
}
