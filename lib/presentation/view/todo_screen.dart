import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/data/respositry_imp.dart';
import 'package:test_app/domain/entity/todo_entity.dart';
import 'package:test_app/domain/use_case/use_case.dart';
import 'package:test_app/presentation/controller/todo_controller.dart';

class TodoListScreen extends StatelessWidget {
  // final TodoController todoController = Get.find();
  final TodoController todoController =
      Get.put(TodoController(TodoUseCase(TodoRepositryImp())));
  // final TodoController todoController = Get.put(TodoController());
  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: todoController.todos.length,
          itemBuilder: (context, index) {
            final todo = todoController.todos[index];
            return ListTile(
              title: Text(todo.name),
              subtitle: Text(todo.price),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // todoController. deleteTodo(todo.id);
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration:
                          const InputDecoration(hintText: "Enter Title"),
                    ),
                    TextField(
                      controller: priceController,
                      decoration:
                          const InputDecoration(hintText: "Enter price"),
                    ),
                    CupertinoButton(
                      child: const Text('Add Data'),
                      onPressed: () {
                        if (titleController.text.isNotEmpty) {
                          todoController.addTodo(
                            Todo(
                                id: DateTime.now().toString(),
                                name: titleController.text,
                                price: priceController.text),
                          );
                          // Get.back();
                          Navigator.pop(context);
                          titleController.clear();
                          priceController.clear();
                        }
                      },
                    )
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // void showAddTodoDialog(BuildContext context) {
  // TextEditingController titleController = TextEditingController();
  //   context: context,
  //   builder: (context) {
  //     return Container(
  //       child: Column(
  //     children: [
  //       TextField(
  //         controller: titleController,
  //         decoration: InputDecoration(labelText: 'Title'),
  //       ),
  //       SizedBox(height: 20),
  //       ElevatedButton(
  //         onPressed: () {
  // //           if (titleController.text.isNotEmpty) {
  //             todoController.addTodo(
  //               TodoModel(
  //                   id: DateTime.now().toString(),
  //                   name: titleController.text,
  //                   price: '99'),
  //             );
  //             Get.back();
  //           }
  //         },
  //         child: const Text('Add Todo'),
  //       ),
  //     ],
  //   ),
  //     );
  //   },
  // );

  // Get.defaultDialog(
  //   title: 'Add Todo',
  //   content: Column(
  //     children: [
  //       TextField(
  //         controller: titleController,
  //         decoration: InputDecoration(labelText: 'Title'),
  //       ),
  //       SizedBox(height: 20),
  //       ElevatedButton(
  //         onPressed: () {
  //           if (titleController.text.isNotEmpty) {
  //             todoController.addTodo(
  //               TodoModel(
  //                   id: DateTime.now().toString(),
  //                   name: titleController.text,
  //                   price: '99'),
  //             );
  //             Get.back();
  //           }
  //         },
  //         child: const Text('Add Todo'),
  //       ),
  //     ],
  //   ),

  // );
  // }
}
