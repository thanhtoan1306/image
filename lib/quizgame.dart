import 'package:flutter/material.dart';

void main() => runApp(MyQuizGame());

class MyQuizGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App name here",
      home: QuestionQuiz(),
    );
  }
}

class RectItem extends StatefulWidget {
  //hàm khởi tạo
  Function onClick;
  bool isActivate;
  String imgURL;
  int id;
  RectItem({this.imgURL, this.id, this.onClick,this.isActivate}); //
  @override
  _RectItemState createState() => _RectItemState();
}

class _RectItemState extends State<RectItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        child: Container(
          width: 170,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [BoxShadow(blurRadius: 5.0)],
            border: Border.all(color: widget.isActivate?Colors.red: Colors.white, width: 1.0),
          ),
          child: Image.asset(widget.imgURL),
        ),
        onTap: widget.onClick,
      ),
    );
  }
}

class QuestionQuiz extends StatefulWidget {
  @override
  _QuestionQuizState createState() => _QuestionQuizState();
}

var finalScore = 0;
var questionNumber = 0;

class _QuestionQuizState extends State<QuestionQuiz> {
  var images = ['boy', 'girl', 'grandfather', 'grandmother'];
  List questions = [
    'Where is boy?',
    'Where is girl?',
    'Where is grandfather?',
    'Where is grandmother?',
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Choice Best Question',
            style: TextStyle(fontSize: 20.0),
          )),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            ),
            Text(questions[0]),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Question ${questionNumber + 1}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Score: ${finalScore}',
                    style: TextStyle(fontSize: 20.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            ),
            Row(
              children: <Widget>[
                RectItem(
                  imgURL: "assets/boy.png",
                  id: 1,

                  isActivate: selected == 1,
                  onClick: () {

                    setState(() {
                      selected = 1;




                    });

                  },

                ),
                Expanded(
                  child: Row(),
                ),
                RectItem(
                  imgURL: "assets/girl.png",
                  id: 2,
                  onClick: () {
                    setState(() {
                      selected = 2 ;
                    });

                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            ),
            Row(
              children: <Widget>[
                RectItem(
                  imgURL: 'assets/grandfather.png',
                  id: 3,
                  onClick: () {
                    setState(() {
                      selected = 3 ;
                    });

                  },
                ),
                Expanded(
                  child: Row(),
                ),
                RectItem(
                  imgURL: "assets/grandmother.png",
                  id: 4,
                  onClick: () {
                    setState(() {
                      selected = 4 ;
                    });

                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            ),
            RaisedButton(

              child: Text('Check'),
              onPressed: () {

                print("Giá trị selected là ${selected}");
              },
            )

          ],

        ),
      ),
    );
  }
}
