import 'package:flutter/material.dart';
import 'student.dart';
import 'counter.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  var cnt;
  @override
  Widget build(BuildContext context) {
    cnt = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context,);
              },
            ),
          ),
          Consumer<Counter>(
            builder: (context, counter, child){
              return Text('${counter.number}');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cnt.add();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      )
    );
  }
}
