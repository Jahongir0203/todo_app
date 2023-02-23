import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:todo_app/moduls/task_data.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}








// class MyApp extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<Data>(
//       create: (context)=> Data(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar:AppBar(
// title: MyText(),
//           ),
//           body: Level1(),
//         ),
//       ),
//     );
//   }
// }
//
// class Level1 extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         MyTextField(),
//         Level2 (),
//       ],
//     );
//   }
// }
//
// class Level2 extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Level3 ();
//   }
// }
//
// class Level3 extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       Provider.of<Data>(context).data,
//     );
//   }
// }
//
// class  MyText extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       Provider.of<Data>(context).data,
//     );
//   }
// }
//
// class MyTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newValue){
//         Provider.of<Data>(context,listen: false).changeString(newValue);
//       },
//
//     );
//   }
// }
//
// class Data extends ChangeNotifier {
//
//   String data='Flutter developer';
//
//   void changeString ( String newText){
//     data=newText;
//     notifyListeners();
//   }
// }


