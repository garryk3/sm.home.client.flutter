import '../enums/service-names.dart';

class ServiceLocator {
  static final services = new Map<ServiceNames, dynamic>();

  static setService(ServiceNames name, service) {
    if(services.containsKey(name)) {
      print("Service $name already exists");
      return;
    }

    services[name] = service;
  }

  static getService(ServiceNames name) {
    if(!services.containsKey(name)) {
      print('Service $name not found');
    }
    return services[name];
  }
}