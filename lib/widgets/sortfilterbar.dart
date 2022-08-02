import 'package:flutter/material.dart';

class SortFilterBar extends StatelessWidget {
  const SortFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Text("120 products",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
          SizedBox(width: 55),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Sort',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ), // <-- Text
                SizedBox(
                  width: 3,
                ),
                Icon(
                  // <-- Icon
                  Icons.sort,
                  size: 20.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ), // <-- Text
                SizedBox(
                  width: 3,
                ),
                Icon(
                  // <-- Icon
                  Icons.sort,
                  size: 20.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
