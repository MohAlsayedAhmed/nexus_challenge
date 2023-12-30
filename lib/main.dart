import 'package:nexus_challenge/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bookings_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3627aa),
          //brightness: Brightness.dark,
        ),

        // textTheme: TextTheme(
        //   displayLarge: const TextStyle(
        //     fontSize: 72,
        //     fontWeight: FontWeight.bold,
        //   ),
        //   // ···
        //   titleLarge: GoogleFonts.oswald(
        //     fontSize: 30,
        //     fontStyle: FontStyle.italic,
        //   ),
        //   bodyMedium: GoogleFonts.merriweather(),
        //   displaySmall: GoogleFonts.pacifico(),
        // ),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => BookingsProvider([])),
        ],
        child: const Dashboard(),
      ),
    );
  }
}