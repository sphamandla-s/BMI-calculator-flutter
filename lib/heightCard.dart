import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  const HeightCard({Key? key}) : super(key: key);

  @override
  State<HeightCard> createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  int _height = 175;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("HEIGHT"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(_height.toString(), style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 50.0),),
            const Text("CM")
          ],
        ),
        Slider(value: _height.toDouble(), min: 120, max: 300 ,onChanged: (double newValue){
          setState(() {
            _height = newValue.round();
          });
        })
      ],
    );
  }
}


