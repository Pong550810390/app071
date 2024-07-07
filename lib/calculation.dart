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
  double amount = 0;
  double interest = 0;
  double result = 0;
  void calculate() {
    setState(() {
      result = amount + (amount * interest) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("จำนวนเงินที่ต้องจ่าย ${result.toStringAsFixed(2)} บาท"),
            Form(
                child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "กรอกวงเงิน"),
                  onChanged: (value) {
                    setState(() {
                      amount = double.parse(value);
                    });
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "อัตราดอกเบี้ย"),
                  onChanged: (value) {
                    setState(() {
                      interest = double.parse(value);
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      calculate();
                    },
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
