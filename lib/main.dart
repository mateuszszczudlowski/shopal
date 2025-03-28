import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:template/src/environment/variables.dart';
import 'package:template/src/repositories/app_theme_repository/app_theme_repository.dart';
import 'package:template/src/services/hive.dart';
import 'package:flutter/services.dart';
import 'src/app.dart';

Future<void> main() => bootWithSupabase();

Future<void> bootWithSupabase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: EnvironmentVariables.supabaseUrl,
    anonKey: EnvironmentVariables.supabaseAnnonKey,
  );
  await setupHive();
  await AppThemeRepository.checkDatabaseExists();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
}
