import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:butttttttttttttttttttttttttton/providercolor.dart';

class ChangeColor extends StatelessWidget {
  const ChangeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Color"),
      ),
      body: GestureDetector(
        onTap: () {
          Provider.of<ColorProvider>(context, listen: false).changeColor();
        },
        child: Consumer<ColorProvider>(
          builder: (context, colorProvider, child) {
            return Container(
              color: colorProvider.change ? Colors.pink : Colors.white,
              child: Center(
                child: Text(
                  "Tap here plz",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
