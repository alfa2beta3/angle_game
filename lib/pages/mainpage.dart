import 'package:flutter/material.dart';
import 'package:angle_game/widgets/emailicon.dart';
import 'package:angle_game/widgets/dialog.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  List<int> ids = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];

  OverlayEntry? overlayEntry;

  // Remove the OverlayEntry.
  void removeHighlightOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  void dispose() {
    // Make sure to remove OverlayEntry when the widget is disposed.
    removeHighlightOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
              AssetImage('assets/napoleon_wave_2.jpg'),
              fit:BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 1058,
                    child: Wrap(
                      children: ids.map((id) => EmailIcon(id:id, func:
                      () {
                          // Remove the existing OverlayEntry.
                          removeHighlightOverlay();

                          assert(overlayEntry == null);

                          overlayEntry = OverlayEntry(
                            // Create a new OverlayEntry.
                            builder: (BuildContext context) {
                              // Align is used to position the highlight overlay
                              // relative to the NavigationBar destination.
                              return dialog(context:context, dispose:
                              (){
                                dispose();
                              });
                            },
                          );

                          // Add the OverlayEntry to the Overlay.
                          Overlay.of(context, debugRequiredFor: widget)!.insert(overlayEntry!);
                        }
                      )).toList(),
                    ),
                  ),
                ],
              ),
            ),
          )
        )
      )
    );
  }
}