import 'package:butttttttttttttttttttttttttton/visprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Vis extends StatelessWidget {
  const Vis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toggle Button",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<VisibilityProvider>(
              builder: (context, visibilityProvider, child) {
                return Visibility(
                  visible: visibilityProvider.isVisible,
                  child: Text("I am visible" , style: TextStyle(fontSize: 40),),
                );
              },
            ),
            SizedBox(
              width: 200,
              child: Consumer<VisibilityProvider>(
                builder: (context, visibilityProvider, child) {
                  return MaterialButton(
                    onPressed: () {
                      visibilityProvider.toggleVisibility();
                    },
                    child: Text(
                      visibilityProvider.isVisible ? "Hide" : "Show",
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
