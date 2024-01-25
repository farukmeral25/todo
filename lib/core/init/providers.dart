import 'package:provider/provider.dart';
import 'package:todo_app/core/init/service_locator.dart';
import 'package:todo_app/feature/home/controller/todo_controller.dart';

class AppProvider {
  static final List<ChangeNotifierProvider> providers = [
    ChangeNotifierProvider<ToDoController>(create: (context) => sl<ToDoController>()),
  ];
}
