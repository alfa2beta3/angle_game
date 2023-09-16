import 'package:flutter/material.dart';

class EmailIcon extends StatelessWidget {

  final id;
  Color color = Colors.white;
  final func;

  EmailIcon({this.id, this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:40.0, right:40),
      child: Column(
        children: [
          IconButton(
            onPressed: func,

            icon: Icon(Icons.mail),
            iconSize: 150,
            tooltip: '放入文件地址',
            color: color,
          ),
          Text('Mail $id',
            style: TextStyle(
            color: color,
            ),
          ),
        ],
      ),
    );
  }
}
