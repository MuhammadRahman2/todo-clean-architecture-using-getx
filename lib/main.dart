import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";
import "package:get_it/get_it.dart";
import "package:test_app/data/respositry_imp.dart";
import "package:test_app/domain/respositry.dart";
import "package:test_app/domain/use_case/use_case.dart";
import "package:test_app/my_home.dart";
import "package:test_app/presentation/controller/todo_controller.dart";
import "package:test_app/presentation/view/todo_screen.dart";

void main() {
  // Initialize GetIt for dependency injection
  GetIt getIt = GetIt.instance;

  // Register TodoRepository and TodoUseCase
  getIt.registerLazySingleton<TodoRepositry>(() => TodoRepositryImp());
  getIt.registerLazySingleton<TodoUseCase>(
      () => TodoUseCase(getIt<TodoRepositry>()));

  // Register TodoController
  getIt.registerLazySingleton<TodoController>(
      () => TodoController(getIt<TodoUseCase>()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TodoListScreen(),
    );
  }
}
