import 'package:todo_app/core/utils/base_controller.dart';
import 'package:todo_app/core/utils/uuid_manager.dart';
import 'package:todo_app/feature/home/data/dto/todo_dto.dart';

class ToDoController extends BaseController {
  List<TodoDto> todos = [];

  void addTodo() {
    todos.add(
      TodoDto(
        id: UuidManager().generateUuid(),
        title: 'Todo ${todos.length + 1}',
        description: 'Description ${todos.length + 1}',
        isCompleted: todos.length % 3 == 0,
      ),
    );

    notifyListeners();
  }

  void removeTodoByID(String id) {
    todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }

  void toggleTodoStatus(String id) {
    final todo = todos.singleWhere((todo) => todo.id == id);
    todo.toggleCompleted();
    notifyListeners();
  }
}
