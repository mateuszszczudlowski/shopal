import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:hive/hive.dart';

part 'app_theme.g.dart';

@CopyWith()
@autoequalMixin
@HiveType(typeId: 2)
class AppTheme extends Equatable with _$AppThemeAutoequalMixin {
  @HiveField(1)
  final bool? darkModeOn;

  const AppTheme({this.darkModeOn});
}
