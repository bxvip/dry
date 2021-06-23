import 'package:global_configuration/global_configuration.dart';
import 'package:dry/model/application.dart';

class ApplicationContext {
  ApplicationContext._();

  static String _path = 'config/application.json';

  static ApplicationContext? _instance;

  static ApplicationContext get instance => _getInstance();

  static ApplicationContext _getInstance() {
    if (_instance == null) {
      _instance = ApplicationContext._();
    }
    return _instance!;
  }

  /// 设置全局的参数配置信息
  static setGlobalFilePath(String path) {
    _path = path;
  }

  Map beanMap = Map();
  late Application application;

  loadApplication() async {
    GlobalConfiguration globalConfiguration = await GlobalConfiguration().loadFromPath(_path);
    print("application:");
    print(globalConfiguration.appConfig);
    this.application = Application.fromJson(globalConfiguration.appConfig);
  }
}
