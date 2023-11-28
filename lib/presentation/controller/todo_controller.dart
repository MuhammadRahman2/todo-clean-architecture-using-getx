import 'package:get/get.dart';
import 'package:test_app/domain/entity/todo_entity.dart';
import 'package:test_app/domain/use_case/use_case.dart';

class TodoController extends GetxController {
  final TodoUseCase todoUseCase;

  TodoController(this.todoUseCase);

  // final TodoUseCase todoUseCase = Get.find();
  // final TodoUseCase todoUseCase = Get.find<TodoUseCase>();
  // TodoRepositry repositry;
  // final TodoUseCase todoUseCase = TodoUseCase();

  final RxList<Todo> todos = <Todo>[].obs;

  void getTodos() {
    todos.value = todoUseCase.getAllData();
  }

  void addTodo(Todo todo) {
    todoUseCase.addData(todo);
    getTodos();
  }

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }
}
