import 'package:get_it/get_it.dart';
import 'package:todo_app/feature/home/controller/todo_controller.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<ToDoController>(() => ToDoController());
}
