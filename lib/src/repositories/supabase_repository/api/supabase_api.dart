import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:template/src/services/supabase/database_service.dart';

final client = DatabaseService(Supabase.instance.client);
