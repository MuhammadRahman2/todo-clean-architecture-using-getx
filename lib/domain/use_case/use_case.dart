import 'package:test_app/domain/entity/todo_entity.dart';
import 'package:test_app/domain/respositry.dart';
import 'package:test_app/domain/model/todo_model.dart';

class TodoUseCase {
  final TodoRepositry repositry;
  TodoUseCase(this.repositry);

  List<Todo> getAllData() {
    return repositry.getAllData();
  }

  void addData(Todo todoModel) {
    repositry.addData(todoModel);
  }

  void updateData(Todo todoModel) {}

  void deleteData(Todo todoModel) {
    repositry.deleteData(todoModel);
  }
}
