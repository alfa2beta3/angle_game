import 'package:flutter/material.dart';

Widget readLink({required empty, required context, required dispose, required link}){
  return Align(
    alignment: AlignmentDirectional.center,
    heightFactor: 1.0,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 4,
        child: Scaffold(
          body: DefaultTextStyle(
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox
                      (width: double.infinity,
                    ),
                    Material(
                      child:
                      Container(
                        color: Colors.red,
                        child: IconButton(onPressed: () {
                          dispose();
                        },
                            icon:Icon(Icons.close)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 8,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0, right:8.0),
                      child: SelectableText(
                        // link
                        empty==true?'true':'false',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}