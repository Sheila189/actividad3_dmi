import 'package:actividad3_dmi/firebase_options.dart';
import 'package:actividad3_dmi/kernel/widgets/crear_cuenta.dart';
import 'package:actividad3_dmi/modules/auth/screens/codigo.dart';
import 'package:actividad3_dmi/modules/auth/screens/contra.dart';
import 'package:actividad3_dmi/modules/auth/screens/login.dart';
import 'package:actividad3_dmi/modules/auth/screens/verificacion.dart';
import 'package:actividad3_dmi/navegation/home.dart';
import 'package:actividad3_dmi/navegation/navigation.dart';
import 'package:actividad3_dmi/navegation/profile.dart';
import 'package:actividad3_dmi/widgets/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//flutter pub get
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/codigo': (context) => const Codigo(),
        '/verificacion': (context) => const Verificacion(),
        '/contra': (context) => const Contra(),
        '/crear_cuenta': (context) => const CrearCuenta()
      },
    );
  }
}
