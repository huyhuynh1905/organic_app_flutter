
import 'app_setup_and_run.dart';
import 'core/build_flavor_config.dart';

void main() {
  //setup Flavor
  FlavorConfig.flavor = Flavor.development;

  //run app
  AppSetup.run();
}