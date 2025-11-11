import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_manager/modules/register/view/register_page.dart';

class RegisterModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.child('/', child: (_) => RegisterPage());
  }
}
