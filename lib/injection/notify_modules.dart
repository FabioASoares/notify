import 'notify_module.dart';

class NotifyModules {
  static final Map<String, NotifyModule> _modules = {};

  static NotifyModule createModule(String name) {
    final module = NotifyModule();
    _modules[name] = module;
    return module;
  }

  static void disposeModule(String name) {
    _modules[name]?.dispose();
    _modules.remove(name);
  }

  static NotifyModule getModule(String name) {
    return _modules[name]!;
  }
}
