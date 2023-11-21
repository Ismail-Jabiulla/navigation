import 'package:flutter/material.dart';

class ExerciseScreen03 extends StatelessWidget {
  const ExerciseScreen03({super.key});

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
                  child: Icon(Icons.star, color: Colors.white,),
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
                      Text('Writing Skills', style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('28 Exersice'),
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
