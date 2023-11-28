// import 'dart:math';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:test_app/todo_model.dart';
// class MyHome extends StatefulWidget {
//   MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   // List<Todo> todoList = [
//   //   Todo(id: '01', name: 'causeual Showes ', price:"1000" ),
//   //   Todo(id: '02', name: 'Sneaker Showes ', price:"1500" ),
//   //   Todo(id: '03', name: 'Sport Shoes ', price:"2500" ),
//   // ];

//   TextEditingController titleC = TextEditingController();
//   TextEditingController priceC = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Center(
//         child: ListView.builder(
//           itemCount: todoList.length,
//           itemBuilder: (context , index) {
//             final data = todoList[index];
//             return ListTile(
//               leading: Text(data.id),
//               title: Text(data.name.toString()),
//               subtitle: Text(data.price.toString()),
//               trailing: popupButton(index),
//             );
//           }
//         )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//         showModalBottomSheet(
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10),
//               topRight: Radius.circular(10)
//             )
//           ),
//           context: context,
//          builder:(context) {
//           return Container(
//             padding: const EdgeInsets.all(8),
//             child: Column(
//               children: [
//                 TextField(
//                   controller: titleC,
//                   decoration: const InputDecoration(
//                     hintText: "Enter Title"
//                   ),
//                 ),

//                 TextField(
//                   controller: priceC,
//                   decoration: const InputDecoration(
//                     hintText: "Enter price"
//                   ),
//                 ),
//                 CupertinoButton(
//                   child: const Text('Add Data'),
//                    onPressed: () {
//                     setState(() {
                    
//                      todoList.add(Todo(
//                      id: Random().nextInt(100).toString(),
//                      name:titleC.text, 
//                      price: priceC.text ),
//                      );
//                      Navigator.pop(context);
//                     });
//                     print(todoList.length);
//                    },

//                    )
//               ],
//             ),
//           );
//         },);
//       },
//       child:  const Text("Add"),
//       ),
//     );
//   }

//   PopupMenuButton<dynamic> popupButton(int index) {
//     return PopupMenuButton(
//               icon: const Icon(Icons.more_vert),
//               onSelected: (value) {
//                 if (value == 'Update'){
                  
//                 }else{
//                   setState(() {
//                     todoList.remove(index);
//                   });
//                   print('remvoe');
//                 }
//               },
//                   itemBuilder: (context) {
//                     return [
//                       const PopupMenuItem(
//                       child: Text('Update')
//                       ),
//                       PopupMenuItem(
//                         onTap: () {
//                           setState(() {
//                     todoList.removeAt(index);
//                   });
//                   print('remove');
//                         },
//                       child: Text('Delete')
//                       ),
//                     ];
//                   },
                  
            
//             );
//   }

// }
