import 'package:flutter/material.dart';

class ExerciseScreen02 extends StatelessWidget {
  const ExerciseScreen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 16, right: 16),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),

                // Skill icone cover

                Container(
                  child: Icon(Icons.person, color: Colors.white,),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  width:16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('Reading Skills', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        height:2,
                      ),
                      Text('23 Exersice'),
                    ],
                  ),
                ),

              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
