
import 'package:flutter_module_boilerplate/domain/entities/index.dart';

abstract class UserRepository {
  Future<User> getUser(String userId);
}
