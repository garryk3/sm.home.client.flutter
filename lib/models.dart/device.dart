import '../enums/rooms.dart';

class Device {
  int idx;
  String status;
  String lastupdate;
  String name;
  String type;
  Rooms room;

  Device(int idx, String status, String lastupdate, String name);

  Device.fromJson(Map<String, dynamic> parsedJson) {
    idx = parsedJson['idx'];
    status = parsedJson['status'];
    lastupdate = parsedJson['lastupdate'];
    name = parsedJson['name'];
    type = parsedJson['type'];
    room = parsedJson['room'];
  }
}