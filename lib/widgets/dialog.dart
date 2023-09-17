import 'package:flutter/material.dart';
//
//
// class dialog extends StatefulWidget {
//   final context;
//   final dispose;
//   final submit;
//
//   dialog({required this.context, required this.dispose, required this.submit});
//
//   @override
//   State<dialog> createState() => _dialogState();
// }
//
// class _dialogState extends State<dialog> {
//
//   late TextEditingController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: AlignmentDirectional.center,
//       heightFactor: 1.0,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10),
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width / 3,
//           height: MediaQuery.of(context).size.height / 4,
//           child: Scaffold(
//             body: DefaultTextStyle(
//               style: const TextStyle(
//                 color: Colors.blue,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 14.0,
//               ),
//               child: Column(
//                 children: <Widget>[
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       SizedBox
//                         (width: double.infinity,
//                       ),
//                       Material(
//                         child:
//                         Container(
//                           color: Colors.red,
//                           child: IconButton(onPressed: (){
//                             dispose();
//                           },
//                               icon:Icon(Icons.close)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Center(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 40, bottom:MediaQuery.of(context).size.height / 40),
//                           child: SizedBox
//                             (width: double.infinity,
//                             child: Row(
//                               mainAxisAlignment:  MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: MediaQuery.of(context).size.width / 3 * 2 / 3,
//                                   child: TextField(
//                                       controller:  _controller,
//                                       onSubmitted: (String value) async{
//                                         widget.submit;
//                                         await showDialog<void>(
//                                             context: context,
//                                             builder: (BuildContext context) {
//                                               return AlertDialog(
//                                                 title: const Text('Thanks!'),
//                                                 content: Text(
//                                                     'You typed "$value", which has length ${value.characters.length}.'),
//                                                 actions: <Widget>[
//                                                   TextButton(
//                                                     onPressed: () {
//                                                       Navigator.pop(context);
//                                                     },
//                                                     child: const Text('OK'),
//                                                   ),
//                                                 ],
//                                               );
//                                             }
//                                         );
//                                       }
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top:MediaQuery.of(context).size.height / 80, bottom:MediaQuery.of(context).size.height / 80),
//                           child: SizedBox(
//                             width: double.infinity,
//                             child:Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               mainAxisAlignment:  MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   'Insert your google doc link',
//                                   style: TextStyle(
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

Widget dialog({required empty, required context, required dispose, required controller, required submit, required delete}){
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
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3 * 2 / 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0, right:8.0),
                                  child: TextField(
                                      controller:  controller,
                                      onSubmitted: (String value) async{
                                        if (empty){
                                          submit;
                                          dispose();
                                        }
                                        else {
                                          delete;
                                          dispose();
                                        }
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