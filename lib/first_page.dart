import 'package:flutter/material.dart';
import 'second_page.dart';
import 'student.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: ElevatedButton(
        child: const Text('Next Page'),
        onPressed: () async {
          final result = await Navigator.pushNamed(
              context,
              '/second',
              arguments: Student('Gil-Dong', 15, 20220151),
          ) as Student;
          print('in FirstPage: ${result.name}');
        },
      ),
    );
  }
}
