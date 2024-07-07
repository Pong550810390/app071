import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("จำนวนเงินที่ต้องจ่าย"),
            Form(
                child: Column(
              children: [
                TextFormField(),
                TextFormField(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.calculate),
                    label: Text('คำนวน')),
              ],
            ))
          ],
        ),
      )),
    );
  }
}
