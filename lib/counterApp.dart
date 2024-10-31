import 'package:butttttttttttttttttttttttttton/counterprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
     final myprovider = Provider.of<Counter_provider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter_provider>(
            builder: (context, counterProvider, child) {
              return Text(
                "counter ${counterProvider.num}",
                style: TextStyle(fontSize: 50, color: Colors.blue),
              );
            },
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: myprovider.increment,
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
