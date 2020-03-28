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
              'Check',
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

  void nextQuestion() {
    if (selected == questionList[index].correct && index <= 3) {
      setState(() {
        finalScore++;
        questionNumber++;
      });
      index++;
    } else {
      print('Bạn chưa trả lời câu hỏi');
    }
  }

  int selected = 0;
  int index = 0;
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
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Question ${questionNumber + 1}',
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonItem(isCorrect: selected == questionList[index].correct),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                ),
                IconButton(
                  color: Colors.green,
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    nextQuestion();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
