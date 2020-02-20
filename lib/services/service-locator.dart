import '../enums/service-names.dart';

class ServiceLocator {
  static var inited = false;
  static final services = new Map<ServiceNames, dynamic>();

  init() {
    // Initialize
    inited = true;
  }

  setService(ServiceNames name, service) {
    if(services.containsKey(name)) {
      print("Service $name already exists");
      return;
    };

    services[name] = service;
  }

  dynamic getService(ServiceNames name) {
    if(!services.containsKey(name)) {
      print('Service $name not found');
    }
    return services[name];
  }
}