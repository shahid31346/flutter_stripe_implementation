import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_implementaion/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey =
      "pk_test_51K0LYWA2mVzgGz8TNv80jWCBzT3p4szDyiphVou6dhLdPL1HePix3hxSBdzfjzUlkCyyEQCs6rn8wK7iXZuvvgW300RaS5DGTJ";

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
