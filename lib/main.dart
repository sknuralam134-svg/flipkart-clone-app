import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'services/auth_service.dart';
import 'services/cart_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => CartService()),
      ],
      child: MaterialApp(
        title: 'Flipkart Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFF2874F0),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF2874F0),
            foregroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
