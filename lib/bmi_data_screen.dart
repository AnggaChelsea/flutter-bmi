import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculate'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Row(children: [
              Expanded(
                child: Column(
                  children: [
                    const Icon(Icons.male),
                    const Text('Male'),
                  ],
                ),
              )
            ]),
          )),
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
          Expanded(
              child: Container(
            color: Colors.blueGrey,
          )),
          GestureDetector(
            onTap: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const BmiResultScreen();
                  },
                ),
              )
            },
            child: Container(
              height: 60,
              color: Colors.deepOrangeAccent,
              child: const Center(child: Text('Hitung BMI')),
            ),
          )
        ],
      ),
    );
  }
}
