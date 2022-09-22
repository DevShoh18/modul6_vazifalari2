import 'package:flutter/material.dart';
import 'package:modul6_vazifalari2/homepage.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    saveLocale: true,
      fallbackLocale: const Locale('en','US'),
      child: const MyApp(), supportedLocales: [
    Locale('en','US'),
    Locale('ko','KO'),
    Locale('ja','JA'),
  ], path: 'assets/translate'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
