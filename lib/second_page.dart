import 'package:flutter/material.dart';
import 'student.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Student;
    print('in SecondPage: ${args.name}');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: ElevatedButton(
        child: const Text('Previous Page'),
        onPressed: (){
          final args_sec = Student('Dong-Soo', 33, 20222222);
          Navigator.pop(context, args_sec);
        },
      ),
    );
  }
}
