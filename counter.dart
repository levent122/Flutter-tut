import 'package:flutter/material.dart';


class Counter extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.indigo),
      home: CounterPage(),

    );

  }

}


class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterPageState();
}


class CounterPageState extends State<CounterPage> {

  int counter = 0;

  void increase() => setState(() => counter += 1);
  void decrease() => setState(() => counter -= 1);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            "Counter",
            style: TextStyle(
              color: counter < 0 ? Colors.red : Colors.green,
              fontSize: 30.0
            ),
          ),
        )
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            child: Center(
              child: Text(
                "$counter",
                style: TextStyle(
                  color: counter < 0 ? Colors.red : Colors.green,
                  fontSize: 40.0,
                  fontFamily: "Roboto"
                ),
              )
            ),
          margin: EdgeInsets.only(bottom: 30.0),
          ),

          Container(
            child: Center(
              child: FlatButton(
                child: Text(
                  "Increase ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                padding: EdgeInsets.all(15.0),
                color: Colors.green,
                onPressed: increase,
              ),
            ),
            margin: EdgeInsets.only(bottom: 20.0),
          ),

          Center(
            child: FlatButton(
              child: Text(
                "Decrease",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              padding: EdgeInsets.all(15.0),
              color: Colors.red,
              onPressed: decrease,
            ),
          ),

        ],

      ),

    );

  }

}
