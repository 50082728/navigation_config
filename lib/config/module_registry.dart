import 'package:dio/dio.dart';
import 'package:navigation_config/navigation/module_navigation_delegate.dart';
import '../config/app_config_model.dart';
import 'app_module.dart';

typedef ModuleBuilder = AppModule Function(
  AppConfig config,
  Dio dio,
  ModuleNavigationCallback onNext,
);

class ModuleRegistry {
  static final Map<String, ModuleBuilder> _registry = {};

  static void register(String id, ModuleBuilder builder) {
    _registry[id] = builder;
  }

  static ModuleBuilder? getBuilder(String id) => _registry[id];
}