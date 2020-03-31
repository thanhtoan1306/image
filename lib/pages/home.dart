import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imagefr/pages/add_page.dart';
import 'package:imagefr/pages/chat.dart';
import 'package:imagefr/pages/profile.dart';
import 'package:imagefr/pages/sentmail.dart';
import 'package:imagefr/pages/settings.dart';

import 'dashbroad.dart';
import 'inbox.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [
    DashBroad(),
    Chat(),
    Profile(),
    Settings(),
  ];

  Widget currentScreen = DashBroad();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset('assets/boy.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                          'Lê Thanh Toàn \n toanlethanh1306@gmail.com',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //Inbox
              ListTile(
                leading: Icon(Icons.inbox,color: Colors.grey,),
                title: Text('Inbox',style: TextStyle(color:Colors.grey),),
                onTap: () {

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Inbox(),
                  ));
                },
              ),
              //Starred
              ListTile(
                leading: Icon(Icons.star,color: Colors.grey,),
                title: Text('Starred',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              //Sent Mail
              ListTile(
                leading: Icon(Icons.send,color: Colors.grey,),
                title: Text('Sent Mail',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SentMail(),
                  ));
                },
              ),
              //Drafts
              ListTile(
                leading: Icon(Icons.drafts,color: Colors.grey,),
                title: Text('Drafts',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              //Trash
              ListTile(
                leading: Icon(Icons.restore_from_trash,color: Colors.grey,),
                title: Text('Trash',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              //Spam
              ListTile(
                leading: Icon(Icons.info,color: Colors.grey,),
                title: Text('Spam',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              //Settings
              ListTile(
                leading: Icon(Icons.settings,color: Colors.grey,),
                title: Text('Settings',style: TextStyle(color:Colors.grey),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Settings(),
                  ));
                },
              ),

            ],
          ),
        ),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = DashBroad();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.dashboard,
                            color: currentTab == 0 ? Colors.blue : Colors.grey),
                        Text(
                          "DashBroad",
                          style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.chat,
                            color: currentTab == 1 ? Colors.blue : Colors.grey),
                        Text(
                          "Chat",
                          style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person,
                            color: currentTab == 2 ? Colors.blue : Colors.grey),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Settings();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.settings,
                            color: currentTab == 3 ? Colors.blue : Colors.grey),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
