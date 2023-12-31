import 'package:example/injector/injector.dart';
import 'package:injectable_mvvm/injectable_mvvm.dart';

@Injectable()
class ConstService {
  const ConstService();
}

abstract class AbstractService {
  Set<String> get environments;
}

@platformMobile
@Injectable(as: AbstractService)
class MobileService extends AbstractService {
  @override
  final Set<String> environments;

  @factoryMethod
  MobileService.fromService(@Named(kEnvironmentsName) this.environments);
}

@named
@platformWeb
@LazySingleton(as: AbstractService)
class WebService extends AbstractService {
  @override
  final Set<String> environments;

  WebService(@Named(kEnvironmentsName) this.environments);
}

@dev
@Injectable(as: AbstractService)
class AsyncService extends AbstractService {
  @override
  final Set<String> environments;

  AsyncService(
    @Named(kEnvironmentsName) this.environments,
  );

  @FactoryMethod(preResolve: true)
  static Future<AsyncService> create(
    @Named(kEnvironmentsName) Set<String> envs,
  ) =>
      Future.value(AsyncService(envs));
}

sealed class Model {
  Model get m {
    return switch (this) { ModelX() => ModelX(), ModelY() => ModelY() };
  }
}

@Injectable(as: Model)
class ModelX extends Model {}

class ModelY extends Model {}
