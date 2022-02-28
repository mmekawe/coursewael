
import 'package:coursewael/moduels/archived_tasks/acrhived_tasks_screen.dart';
import 'package:coursewael/moduels/done_tasks/done_tasks_screen.dart';
import 'package:coursewael/moduels/new_tasks/new_tasks_screen.dart';
import 'package:coursewael/shared/compenents/components.dart';
import 'package:coursewael/shared/compenents/constants.dart';


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {


  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List <Widget> screen=
  [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchevedTasksScreen(),
  ];
  List <String> titles=
      [
        'New Tasks',
        'Done Tasks',
        'Archived Tasks',
      ];
  late Database database;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBottomSheetShow = false;
  IconData fabIcon = Icons.edit;
  var titleController =TextEditingController();
  var dateController =TextEditingController();
  var timeController =TextEditingController();

  void initState() {

    super.initState();
    creatDatabase();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,

      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
           titles![currentIndex],
        ),
elevation: 0.0,
      ),
      body: screen[currentIndex],
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: ()
        {
          if (isBottomSheetShow)
            {
              if(formKey.currentState!.validate())
              {
                insertDatabase(
                  title: titleController.text,
                  time:timeController.text ,
                  date: dateController.text,
                ).then((value) {
                  Navigator.pop(context);
                  isBottomSheetShow=false;
                  setState(() {
                    fabIcon = Icons.edit;
                  });
                });

              }


            }else
            {
            scaffoldkey.currentState!.showBottomSheet(
                  (context) => Container(

                    color: Colors.white,
                    padding: EdgeInsets.all(20.0,),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:
                        [
                          defaultFormField(
                              controller: titleController,
                              type: TextInputType.text,
                              onSubmit:  (value){
                                print(value);
                              },
                              onChange:  (value){
                                print(value);
                              },
                              v:  (String? value)
                              {
                                if(value!.isEmpty)
                                {
                                  return'The Title  Cant Be null';
                                }else {
                                  return null;
                                }
                              },
                              label: 'Task Title',
                              prefix: Icons.title,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                            controller: timeController,
                            type: TextInputType.datetime,

                            onSubmit:  (value){
                              print(value);
                            },
                            onChange:  (value){
                              print(value);
                            },
                            onTab: (){
                             showTimePicker(context: context,
                                 initialTime: TimeOfDay.now(),
                             ).then((value)
                             {
                               timeController.text=value!.format(context);
                             // print(value!.format(context)) ;
                             });
                            },
                            v:  (String? value)
                            {
                              if(value!.isEmpty)
                              {
                                return'Time  Cant Be null';
                              }else {
                                return null;
                              }
                            },
                            label: 'Task Time',
                            prefix: Icons.watch_later_outlined,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          defaultFormField(
                            controller: dateController,
                            type: TextInputType.datetime,

                            onSubmit:  (value){
                              print(value);
                            },
                            onChange:  (value){
                              print(value);
                            },
                            onTab: ()
                            {
                              showDatePicker(
                                context: context,
                                  initialDate:DateTime.now()  ,
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime.parse('2022-05-25'),
                              ).then((value)
                              {
                             //print(DateFormat.yMMMd().format(value));
                             dateController.text = DateFormat.yMMMd().format(value!);
                              });
                            },
                            v:  (String? value)
                            {
                              if(value!.isEmpty)
                              {
                                return'Date  Cant Be null';
                              }else {
                                return null;
                              }
                            },
                            label: 'Task Date',
                            prefix: Icons.calendar_today_outlined,
                          ),
                        ],
                      ),
                    ),
                  ),
              elevation: 20.0,
              //
            ).closed.then((value)
            {

              isBottomSheetShow=false;
              setState(() {
                fabIcon = Icons.edit;
              });
            });
            isBottomSheetShow = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
        },
        child: Icon(
          fabIcon,
        ),
      ) ,
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        selectedFontSize: 18.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index)
        {
          setState(() {
            currentIndex=index;
          });
        },
        items:
        [
          BottomNavigationBarItem(
            backgroundColor: Colors.purpleAccent,

              icon: Icon(
              Icons.menu,
      ),
      label: 'Tasks',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purpleAccent,
            icon: Icon(
              Icons.email,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purpleAccent,
            icon: Icon(
              Icons.archive,
            ),
            label: 'Archeve',
          ),
        ],
      ) ,
    );
  }
  // Future getName() async
  // {
  //   return 'Ahmed Ali';
  // }
  void creatDatabase() async
  {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version)
        {
          print ('database Created');
          database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY,title TEXT,date TEXT, TIME TEXT,status TEXT)').then((value)
          {
            print('Table creates');

          }).catchError((error){
            print('Error when creatig table');

          });
        },
      onOpen:(database)
        {
          getDataFromDatabase(database).then((value)
          {
            tasks = value;
            print(tasks);
          });
          print ('database opened');
        }
    );
  }
  Future insertDatabase({
    required String title,
    required String time,
    required String date,
}) async
  {
   return await database.transaction((txn)
    async {
      txn.rawInsert('INSERT INTO tasks (title, date, time, status) VALUES ("$title","$time","$date","New")',
      )
          .then((value) {
            print('$value inserted successfuly');
      }).catchError((Error) {
        print('Error when inserting new record ${Error.toString()}');
      } );
return txn;
    });
  }
  Future <List<Map>> getDataFromDatabase(database) async
  {
  return await database.rawQuery('SELECT * FROM TASKS');

  }
}
