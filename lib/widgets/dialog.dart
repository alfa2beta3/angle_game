import 'package:flutter/material.dart';

Widget dialog({required context, required dispose}){
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
                          child: IconButton(onPressed: (){
                            dispose();
                          },
                              icon:Icon(Icons.close)),
                        ),
                      ),
                    ],
                  ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 40, bottom:MediaQuery.of(context).size.height / 40),
                            child: SizedBox
                              (width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:  MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Text(
                                      'Insert your google doc link',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                            Padding(
                              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 80, bottom:MediaQuery.of(context).size.height / 80),
                                child: SizedBox(
                                width: double.infinity,
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:  MainAxisAlignment.center,
                                  children: [
                                      Text(
                                        'Insert your google doc link',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                        ],
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