// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:navigation_config/navigation/module_navigation_delegate.dart';
import '../config/app_config_model.dart';

abstract class AppModule extends StatefulWidget {
  AppModule({super.key});

  String get id;

  late AppConfig config;
  late Dio client;
  late ModuleNavigationCallback onNext;

  Widget build(BuildContext context);

  @override
  State<AppModule> createState() => _AppModuleState();
}

class _AppModuleState extends State<AppModule> {
  @override
  Widget build(BuildContext context) {
    return widget.build(context);
  }
}