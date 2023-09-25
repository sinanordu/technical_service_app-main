import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_service_app/product/features/auth/view/login_view.dart';
import 'package:technical_service_app/product/features/home/view/home_view.dart';
import 'package:technical_service_app/product/features/report/view/create_report_view.dart';
import 'package:technical_service_app/product/features/task/views/task_detail_view.dart';

void main() {
  runApp(const TechnicalServiceApp());
}

class TechnicalServiceApp extends StatelessWidget {
  const TechnicalServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const LoginView(),
        '/home': (context) => const HomeView(),
        '/taskDetail': (context) => const TaskDetailView(),
        '/createReport': (context) => const CreateReportView(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.primary,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.primary,
          selectedItemColor: colorScheme.background,
          unselectedItemColor: colorScheme.onPrimary,
          enableFeedback: true,
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(255, 255, 255, 252),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => Colors.blue,
            ),
          ),
        ),
        // iconButtonTheme: IconButtonThemeData(
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStateColor.resolveWith(
        //       (states) => colorScheme.primary,
        //     ),
        //   ),
        // ),
        textTheme: GoogleFonts.jostTextTheme(),
      ),
      home: const LoginView(),
    );
  }
}

const ColorScheme colorScheme = ColorScheme(
  // primary: Color(0xFF2FD498), //x
  primary: Color(0xff4AC29A),
  primaryContainer: Color(0xFF233041), //x
  onPrimary: Colors.black,
  onPrimaryContainer: Color.fromARGB(121, 135, 140, 148),
  secondary: Color(0xFF14b6e7), //x
  secondaryContainer: Color(0xFF035F97),
  onSecondary: Colors.black,
  surface: Color(0xFFECECEC), //x
  onSurface: Colors.black54, //x
  background: Colors.white, //x
  // onBackground: Color(0xFF1b2430), //x
  onBackground: Color(0xFF313a45), //x
  error: Color(0xFFD60B0B),
  onError: Colors.white,
  brightness: Brightness.light,
);
