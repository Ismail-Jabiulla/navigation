import 'package:flutter/material.dart';

class myBottomSheet extends StatelessWidget {
  const myBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            child: const Text('Click Here'),
            onPressed: () {
              showModalBottomSheet(context: context,
                  builder:(BuildContext context){
                return SizedBox(
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
          ),
        ),
      );
  }
}
