import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'auth_injection.config.dart';

late final GetIt authGetIt;

@InjectableInit(
  initializerName: 'initAuthInjection',
  preferRelativeImports: true,
  asExtension: false,
)
void configureAuthDependencies({required GetIt instance}) {
  authGetIt = instance;
  initAuthInjection(instance);
}
