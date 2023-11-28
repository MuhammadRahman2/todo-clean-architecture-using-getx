import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:test_app/domain/entity/todo_entity.dart';
import 'package:test_app/domain/respositry.dart';

class TodoRepositryImp implements TodoRepositry {
  RxList<Todo> todoList = <Todo>[
    Todo(id: '01', name: 'causeual Showes ', price: "1000"),
    Todo(id: '02', name: 'Sneaker Showes ', price: "1500"),
    Todo(id: '03', name: 'Sport Shoes ', price: "2500"),
  ].obs;

  @override
  void addData(Todo todoModel) {
    todoList.add(todoModel);
  }

  @override
  void deleteData(Todo todoModel) {
    // todoList.removeAt(int.parse(todoModel.id));
    todoList.remove(todoModel);
  }

  @override
  List<Todo> getAllData() {
    return todoList;
  }

  @override
  void updateData(Todo todoModel) {}
}
