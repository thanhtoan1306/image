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

class ButtonItem extends StatefulWidget {
  bool isCorrect;
  Function checkCorrect;
  ButtonItem({this.isCorrect, this.checkCorrect});
  @override
  _ButtonItemState createState() => _ButtonItemState();
}

class _ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Center(
          child: InkWell(
        child: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            color: (widget.isCorrect ? Colors.green : Colors.red),
          ),
          child: Center(
            child: Text(
              'Kết quả',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        onTap: widget.checkCorrect,
      )),
    );
  }
}

class RectItem extends StatefulWidget {
  //hàm khởi tạo
  Function onClick;
  bool isActivate;
  String imgURL;
  int id;
  RectItem({this.imgURL, this.id, this.onClick, this.isActivate}); //
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
          width: 175,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [BoxShadow(blurRadius: 3.0)],
            border: Border.all(
                color: widget.isActivate ? Colors.blue : Colors.white,
                width: 3.0),
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

int finalScore = 0;
int questionNumber = 0;

class QuestionAnswer {
  String question;
  List<String> options;
  int correct;
  QuestionAnswer({this.question, this.options, this.correct});
}

class _QuestionQuizState extends State<QuestionQuiz> {
  static List<String> items = [
    'boy.png',
    'girl.png',
    'grandfather.png',
    'grandmother.png'
  ];
  List<QuestionAnswer> questionList = [
    QuestionAnswer(question: 'Đâu là bé trai?', options: items, correct: 1),
    QuestionAnswer(question: 'Đâu là bé gái?', options: items, correct: 2),
    QuestionAnswer(question: 'Đâu là ông?', options: items, correct: 3),
    QuestionAnswer(question: 'Đâu là bà?', options: items, correct: 4)
  ];
  int index = 0;

  Future<void> _conkAlert(BuildContext context) {

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: selected == questionList[index].correct
              ? Text('Chúc mừng bạn đã chọn đúng')
              : Text('Bạn đã trả lời sai'),
          actions: <Widget>[
            FlatButton(
              child: const Text('Quay về'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Tiếp'),
              onPressed: () {
                print('Giá trị index là ${index}');


                Navigator.of(context).pop();

                if(selected == questionList[index].correct){

                  if (index == 3) {
                    // Navigator.of(context).pop();

                    _finkAlert(context);
                    finalScore++;
                  }
                  else if (index > 3) {
                    //
                  }
                  else {
                    setState(() {
                      finalScore++;
                      questionNumber++;
                      index++;
                    });
                  }
                }else{

                  //todo
                }
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _finkAlert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Chúc mừng bạn hoàn thành '),
          actions: <Widget>[
            FlatButton
              (
              child: const Text('Kết thúc'),
              onPressed: () {
                Navigator.of(context).pop();
              },

            )
          ],

        );

      },
    );
  }



  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Quiz Game',
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
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Câu hỏi ${questionNumber + 1}',
                    style:
                        TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                  ),
                  Expanded(
                    child: Text(
                      questionList[index].question,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Text(
                    'Điểm: ${finalScore}',
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
                  isActivate: selected == 2,
                  onClick: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            ),
            Row(
              children: <Widget>[
                RectItem(
                  imgURL: 'assets/grandfather.png',
                  id: 3,
                  isActivate: selected == 3,
                  onClick: () {
                    setState(() {
                      selected = 3;
                    });
                  },
                ),
                Expanded(
                  child: Row(),
                ),
                RectItem(
                  imgURL: "assets/grandmother.png",
                  id: 4,
                  isActivate: selected == 4,
                  onClick: () {
                    setState(() {
                      selected = 4;
                    });
                  },
                ),
              ],
            ),

            RaisedButton(onPressed:(){
              _conkAlert(context);

            },
            child: Text('Check'),
            ),


          ],
        ),
      ),
    );
  }
}
