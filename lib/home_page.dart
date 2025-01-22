import 'package:flutter/material.dart';
import 'util/emoticon.dart';
import 'util/exercises_tile.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key); // Fixed this line

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 35,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.forum, size: 35,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 35,), label: ''),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //Greetings Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        "Hi, Daler",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        DateFormat('d MMM, yyyy').format(DateTime.now()), // Formats the current date
                        style: TextStyle(color: Colors.blue[200]),
                      ),

                    ]),

                    //Notifications
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                //Search Bar

                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                //How do you feel?
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ]),
                SizedBox(
                  height: 25,
                ),

                // 4 different faces

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // bad
                    Column(
                      children: [
                        EmoticonFace(emotionFace: '😒'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    //fine
                    Column(
                      children: [
                        EmoticonFace(emotionFace: '😊'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    // well

                    Column(
                      children: [
                        EmoticonFace(emotionFace: '😀'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    // excellent

                    Column(
                      children: [
                        EmoticonFace(emotionFace: '🥳'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // ListView of Exercises
                    Expanded(child: ListView(
                      children: [
                        Exercise(
                          icon: Icons.mic,
                          ExerciseName: 'Speaking',
                          numberOfExercises: '15',
                          color: Colors.red,
                        ),
                        Exercise(
                          icon: Icons.headset,
                          ExerciseName: 'Listening',
                          numberOfExercises: '20',
                          color: Colors.orange,
                        ),
                        Exercise(
                          icon: Icons.menu_book,
                          ExerciseName: 'Reading',
                          numberOfExercises: '16',
                        color: Colors.green,),
                          Exercise(
                          icon: Icons.edit,
                          ExerciseName: 'Writing',
                          numberOfExercises: '19',
                            color: Colors.blue,
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
