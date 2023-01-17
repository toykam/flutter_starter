
import 'package:get_it/get_it.dart';
import 'package:wuri/frontend/routes/routes.gr.dart';

final getIt = GetIt.instance;

void setUpLocator() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}