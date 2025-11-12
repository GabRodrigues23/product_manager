import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_manager/modules/home/home_module.dart';
import 'package:product_manager/modules/list/list_module.dart';
import 'package:product_manager/modules/register/register_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    super.routes(r);

    r.module('/', module: HomeModule());
    r.module('/list', module: ListModule());
    r.module('/home', module: RegisterModule());
  }
}
