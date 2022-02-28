
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation:0.0 ,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
                'Chats',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.camera,
                ),
              ),),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.edit,
              ),
            ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0,),
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.blue[200],

              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Search',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal ,
                child: Row(
                  children: [
                    Container(
                      width: 60.0,
                      child: Column(

                        children: [
                        Stack(
                          alignment: Alignment.bottomRight,

                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
                              ),
                              CircleAvatar(

                                radius: 9.0,

                              ),
                            ],
                          ),
                        Text('Mohammed Wazir'),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,

                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
                            ),
                            CircleAvatar(

                              radius: 9.0,

                            ),
                          ],
                        ),
                        Text('Mohammed Wazir'),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,

                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
                            ),
                            CircleAvatar(

                              radius: 9.0,

                            ),
                          ],
                        ),
                        Text('Mohammed Wazir'),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,

                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
                            ),
                            CircleAvatar(

                              radius: 9.0,

                            ),
                          ],
                        ),
                        Text('Mohammed Wazir'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,

                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C5603AQHLd99bQ3djKQ/profile-displayphoto-shrink_800_800/0/1642411176336?e=1649894400&v=beta&t=m5yrKrIltoiW0RjS72KSEEP_QczvFkiveGJewm4FB-Y'),
                    ),
                    CircleAvatar(

                      radius: 9.0,

                    ),
                  ],
                ),
                SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed makawy',
                    ),
                    Row(
                      children: [
                        Text(
                          'Wecome To mt Page',
                        ),
                      ],
                    ),

                  ],
                ),

              ],
            ),

          ],
        ),
      ),

    );
  }
}
