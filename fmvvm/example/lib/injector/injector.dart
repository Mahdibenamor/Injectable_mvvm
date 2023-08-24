import 'package:get_it/get_it.dart';
import 'package:fmvvm/fmvvm.dart';
import 'injector.config.dart';

const platformMobile = Environment('platformMobile');
const platformWeb = Environment('platformWeb');

@FmvvmInit(preferRelativeImports: true)
configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}
