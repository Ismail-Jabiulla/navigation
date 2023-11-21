import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        titleTextStyle:
        TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'serif'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: (){},color: Colors.white,)
        ],
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}, color: Colors.white,),
      ),
        body: Center(
          child: Container(
              child: ElevatedButton(
                child: const Text('Bottom Sheet'),
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Theme.of(context).primaryColor,
                      context: context,
                      builder: (BuildContext context){
                        return const SizedBox(
                          height: 400,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.link),
                                title: Text('Copy Link', style: TextStyle(),),
                              ),
                              ListTile(
                                leading: Icon(Icons.my_library_music_outlined),
                                title: Text('Music Library', style: TextStyle(),),
                              ),
                              ListTile(
                                leading: Icon(Icons.share),
                                title: Text('Share', style: TextStyle(),),
                              ),
                            ],
                          ),

                        );

                      }
                  );
                },
              )
          ),
        ),
    );
  }
}
