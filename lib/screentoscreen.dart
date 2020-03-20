import 'package:flutter/material.dart';

void main() => runApp(MyFirstScreen());


class MyFirstScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstScreenPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyFirstScreenPage extends StatefulWidget {
  MyFirstScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyFirstScreenPageState createState() => _MyFirstScreenPageState();
}

class _MyFirstScreenPageState extends State<MyFirstScreenPage> {
  int _counter = 0;
  String _result = "Waiting Result";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void goToNext(BuildContext context, String what) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new MyNextPage(what)),
    ).then((result) {
      setState(() {
        print('result');
        _result = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.send),
              onPressed: () => goToNext(context, _counter.toString()))
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

            Text(_result),




          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyNextPage extends StatefulWidget {
  final String what;
  MyNextPage(this.what);

  @override
  _MyNextPageState createState() => new _MyNextPageState();
}

class _MyNextPageState extends State<MyNextPage> {

  void backToHome(BuildContext context, String result) {
    Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Next Page'),
        //  leading: new IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, "Result is here!")),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Text(
              'You hit the button in MyHomePage ${widget.what} time(s)',
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('Back To Home '),
              onPressed: () {

                backToHome(context,widget.what );
              },
            )
          ],
        ),
      ),
    );
  }
}
