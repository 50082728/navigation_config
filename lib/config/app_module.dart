import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:navigation_config/navigation/module_navigation_delegate.dart';
import '../config/app_config_model.dart';

abstract class AppModule {
  String get id;

  Widget build(
    BuildContext context,
    AppConfig config,
    Dio client, {
    required ModuleNavigationCallback onNext,
  });
}