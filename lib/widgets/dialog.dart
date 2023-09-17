import 'package:flutter/material.dart';

Widget dialog({required empty, required context, required dispose, required controller, required submit}){
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
                        padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 80, bottom:MediaQuery.of(context).size.height / 80),
                        child: SizedBox
                          (width: double.infinity,
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3 * 2 / 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0, right:8.0),
                                  child: TextField(
                                      // controller:  controller,
                                      onSubmitted: (String value) async{
                                          submit();
                                          dispose();
                                      }
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
                                empty?'empty': 'not empty',
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