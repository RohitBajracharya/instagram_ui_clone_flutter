// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DynamicPostWidget extends StatelessWidget {
  final List<String> items;
  const DynamicPostWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: (items.length / 3).ceil(), // Calculate the number of rows needed
      itemBuilder: (context, rowIndex) {
        int startIndex = rowIndex * 3;
        int endIndex = (rowIndex + 1) * 3;
        if (endIndex > items.length) {
          endIndex = items.length;
        }

        List<String> rowItems = items.sublist(startIndex, endIndex);

        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: rowItems.map((item) {
            return Container(
              width: width / 3,
              height: 124,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
