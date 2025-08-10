import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module_boilerplate/core/di/di.dart';
import 'package:flutter_module_boilerplate/core/env/env.dart';
import 'package:flutter_module_boilerplate/presentation/app.dart';
import 'package:flutter_module_boilerplate/presentation/generated/locales/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupLocator(Env.dev(apiUrl: 'http://api.example.com'));
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US')],
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}
