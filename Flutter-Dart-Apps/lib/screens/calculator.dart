import 'package:flutter/material.dart';

class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  Widget custombutton(String val) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          '$val',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate),
        title: const Text(
          'Calculator',
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.bottomRight,
              child: Text(
                'Output',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            )),
            Row(
              children: [
                custombutton('C'),
                custombutton('()'),
                custombutton('%'),
                custombutton('/'),
              ],
            ),
            Row(
              children: [
                custombutton('1'),
                custombutton('2'),
                custombutton('3'),
                custombutton('+'),
              ],
            ),
            Row(
              children: [
                custombutton('4'),
                custombutton('5'),
                custombutton('6'),
                custombutton('-'),
              ],
            ),
            Row(
              children: [
                custombutton('9'),
                custombutton('8'),
                custombutton('7'),
                custombutton('x'),
              ],
            ),
            Row(
              children: [
                custombutton('.'),
                custombutton('0'),
                custombutton('AC'),
                custombutton('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
