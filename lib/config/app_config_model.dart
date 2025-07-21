class AppConfig {
  final String appId;
  final List<String> modules;
  final Map<String, String> branding;
  final Map<String, String> cryptoKeys;
  final Map<String, String> apiConfig;
  final Map<String, dynamic> moduleSettings;

  AppConfig({
    required this.appId,
    required this.modules,
    required this.branding,
    required this.cryptoKeys,
    required this.apiConfig,
    required this.moduleSettings,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      appId: json['appId'] ?? '',
      modules: List<String>.from(json['modules'] ?? []),
      branding: Map<String, String>.from(json['branding'] ?? {}),
      cryptoKeys: Map<String, String>.from(json['cryptoKeys'] ?? {}),
      apiConfig: Map<String, String>.from(json['apiConfig'] ?? {}),
      moduleSettings: Map<String, dynamic>.from(json['moduleSettings'] ?? {}),
    );
  }
}