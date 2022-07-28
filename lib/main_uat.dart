import 'package:organic_bloc/core/build_flavor_config.dart';

import 'app_setup_and_run.dart';

void main() {
  //setup Flavor
  FlavorConfig.flavor = Flavor.uat;

  //run app
  AppSetup.run();
}