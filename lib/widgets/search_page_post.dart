import 'package:flutter/material.dart';

class EvenSearchPost extends StatelessWidget {
  const EvenSearchPost({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // two vertical box in left + one box in right
        Row(
          children: [
            // two vertical box in left
            Column(
              children: [
                Container(
                  width: width / 3,
                  height: width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.6),
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: width / 3,
                  height: width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.6),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            //one vertical box in right
            Expanded(
              child: Container(
                height: (width / 3) + (width / 3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.6),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        //three horizontal box
        Row(
          children: [
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        //three horizontal box
        Row(
          children: [
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OddSearchPost extends StatelessWidget {
  const OddSearchPost({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // two vertical box in left + one box in right
        Row(
          children: [
            //one vertical box in left
            Expanded(
              child: Container(
                height: (width / 3) + (width / 3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.6),
                  color: Colors.blue,
                ),
              ),
            ),
            // two vertical box in right
            Column(
              children: [
                Container(
                  width: width / 3,
                  height: width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.6),
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: width / 3,
                  height: width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.6),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
        //three horizontal box
        Row(
          children: [
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        //three horizontal box
        Row(
          children: [
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
            Container(
              width: width / 3,
              height: width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.6),
                color: Colors.blueAccent,
              ),
            ),
          ],
        )
      ],
    );
  }
}
