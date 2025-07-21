import 'package:flutter/material.dart';
import '../config/app_config_model.dart';

typedef ModuleNavigationCallback = void Function(
  BuildContext context,
  AppConfig config,
  String currentModuleId,
);