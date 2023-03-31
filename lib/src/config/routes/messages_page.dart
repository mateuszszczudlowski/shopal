import 'package:template/src/config/routes/routes.dart';
import 'package:template/src/modules/main_screen/widgets/pages/message_page.dart';
export 'package:template/src/modules/main_screen/widgets/pages/message_page.dart';

class MessagesPageHelper extends ParameterlessRouteHelper {
  static const path = 'messages-page';
  static const widget = MessagesPage;
  const MessagesPageHelper() : super(parent: '/main', path: path);
}
