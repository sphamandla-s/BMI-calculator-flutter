import 'package:bmi_calculator/IbmLayout.dart';
import 'package:flutter/material.dart';

import 'CardLayout.dart';

class InputApp extends StatefulWidget {
  const InputApp({Key? key}) : super(key: key);

  @override
  State<InputApp> createState() => _InputAppState();
}

class _InputAppState extends State<InputApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IBM CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: IbmLayout(
                    Color(0xFF1D1E33),
                    CardLayout("MALE", Icons.male_outlined)
                  ),
                ),
                Expanded(
                  child:
                      IbmLayout(Color(0xFF1D1E33), CardLayout("FEMALE", Icons.female_outlined)),
                ),
              ],
            ),
          ),
          const Expanded(
            child: IbmLayout(Color(0xFF1D1E33), Icon(Icons.access_alarm)),
          ),
          Expanded(
              child: Row(
            children: const [
              Expanded(
                child: IbmLayout(Color(0xFF1D1E33), Icon(Icons.access_alarm)),
              ),
              Expanded(
                child: IbmLayout(Color(0xFF1D1E33), Icon(Icons.access_alarm)),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
