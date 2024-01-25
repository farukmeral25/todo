import 'package:uuid/uuid.dart';

class UuidManager {
  static final UuidManager _instance = UuidManager._init();

  UuidManager._init();

  factory UuidManager() {
    return _instance;
  }

  Uuid uuid = const Uuid();

  String generateUuid() {
    return uuid.v4();
  }
}
