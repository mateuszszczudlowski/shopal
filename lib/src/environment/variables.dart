class EnvironmentVariables {
  static const String appName = String.fromEnvironment(
    'APP_NAME',
    defaultValue: 'Unflavored app name',
  );
  static const String appSuffix = String.fromEnvironment('APP_SUFFIX');

  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: '',
  );

  static const String supabaseAnnonKey = String.fromEnvironment(
    'SUPABASE_ANNON_KEY',
    defaultValue: '',
  );
}
