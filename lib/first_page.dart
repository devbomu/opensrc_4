import 'package:flutter/material.dart';
import 'second_page.dart';
import 'student.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class FirstPage extends StatelessWidget {
  var cnt;
  @override
  Widget build(BuildContext context) {
    cnt = Provider.of<Counter>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text('Next Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/second',);
              },
            ),
          ),
          Text('${cnt.number}'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cnt.add();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
