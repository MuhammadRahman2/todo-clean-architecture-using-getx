import 'package:test_app/domain/entity/todo_entity.dart';

abstract class TodoRepositry {
  List<Todo> getAllData();

  void addData(Todo todoModel);

  void updateData(Todo todoModel);

  void deleteData(Todo todoModel);
}
