
import 'package:organic_bloc/app_setup_and_run.dart';
import 'package:organic_bloc/core/build_flavor_config.dart';

void main() {
  //setup Flavor
  FlavorConfig.flavor = Flavor.production;

  //run app
  AppSetup.run();
}