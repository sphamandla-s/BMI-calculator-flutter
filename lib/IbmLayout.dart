import 'package:flutter/cupertino.dart';

class IbmLayout  extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  const IbmLayout(this.cardColor, this.cardChild,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20.0) ,
      ),
      child: cardChild,
    );
  }

}
