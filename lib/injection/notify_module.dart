import 'notify_injection.dart';

class NotifyModule {
  final NotifyInjection _injection = NotifyInjection();
  void dispose() => _injection.dispose();
  void register<T>(T value) {
    _injection.register<T>(value);
  }

  void registerFactory<T>(T Function() value) {
    _injection.registerFactory<T>(value);
  }

  T get<T>() {
    return _injection.get<T>();
  }
}
