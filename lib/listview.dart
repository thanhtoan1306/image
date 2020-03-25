import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.green));
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: TabBar(
            indicator: (UnderlineTabIndicator(
                // gạch dưới nơi chọn
                insets: EdgeInsets.symmetric(horizontal: 16.0))),
            controller: controller,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.person_add),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.clear_all),
              ),
            ],
          )),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomeMyPage(),
          HomeMyPage(),
          HomeMyPage(),
          HomeMyPage(),
        ],
      ),
    );
  }
}

class HomeMyPage extends StatefulWidget {
  @override
  _HomeMyPageState createState() => _HomeMyPageState();
}

class _HomeMyPageState extends State<HomeMyPage> {
  List names = [
    'Quoc Vu',
    'Le Toan',
    'Thuan Tien',
    'Quoc Toan',
    'Minh Tien',
    'Anh Phuc',
    'Minh Man',
    'Duc Thanh',
    'Le Long',
    'Thu Thao'
  ];
  List designations = [
    'Programer',
    'Data Scientist',
    'Project Manager',
    'Team Leader',
    'Deverloper',
    'Designer',
    'Marketing Manager',
    'Coder',
    'Manager',
    'Web Designer'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          //luu ý
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,

                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.green,
                          backgroundImage: NetworkImage(
                              "https://lh3.googleusercontent.com/proxy/cgC7RWcygdEvdm1nXcvqD3OWgAGS9q8XUuRJfBKq9x8maRNY04un7o1lcbkBvO35JkGSgZ47tFXqiZhDx-2dVnS6v4ZIwUxq-NJld67Ehcw73LYizSJa"),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Text(
                            names[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            designations[index],
                            style: TextStyle(
                                color: Colors.grey,
                                ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    child: FlatButton(
                      onPressed: (){

                      },
                      color: Colors.red[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:
                      Text('Invite',style: TextStyle(color:Colors.white),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
