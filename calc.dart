import 'package:flutter/material.dart';


class Calculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.indigo),
      home: CalculatorPage(),

    );

  }

}


class CalculatorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorPageState();
}


class CalculatorPageState extends State<CalculatorPage> {

  final _formKey = GlobalKey<FormState>();
  final firstController = TextEditingController();
  final lastController = TextEditingController();

  num result = 0;

  void addition()=> setState((){
    result = num.parse(firstController.text) + num.parse(lastController.text);
  });

  void extraction() => setState((){
    result = num.parse(firstController.text) - num.parse(lastController.text);    
  });

  void division() => setState((){
    result = num.parse(firstController.text) / num.parse(lastController.text);    
  });
  
  void multiplication() => setState((){
    result = num.parse(firstController.text) * num.parse(lastController.text);    
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(title: Center(child: Text("Calculator",style: TextStyle(fontSize: 25.0),))),
      body: Form(

        key: _formKey,
        child:ListView(

          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Text(
                      "$result",
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.indigo
                      ),
                    )
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 30.0, top: 30.0),
                  child: TextFormField(
                    validator: (value) {if (value.isEmpty) {return 'Please enter some text';}},
                    decoration: InputDecoration(hintText: "First Number"),
                    controller: firstController,
                  ),
                ),

                Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 30.0,),
                    child: TextFormField(
                      validator: (value) {if (value.isEmpty) {return 'Please enter some text';}},
                      decoration: InputDecoration(hintText: "Last Number"),
                      controller: lastController,
                    ),
                  ),

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    RaisedButton(
                      child: Text(
                        "+",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                        ),
                      ),
                      color: Colors.indigo,
                      onPressed: addition,
                    ),

                    RaisedButton(
                      child: Text(
                        "-",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                        ),
                      ),
                      color: Colors.indigo,                      
                      onPressed: extraction,
                    ),

                  ],
                ),


                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    RaisedButton(
                      child: Text(
                        "*",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                        ),
                      ),
                      color: Colors.indigo,
                      onPressed: multiplication,
                    ),

                    RaisedButton(
                      child: Text(
                        "/",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                        ),
                      ),
                      color: Colors.indigo,
                      onPressed: division
                    ),

                  ],
                ),

              ],
            ),

          ],

        ) 
      
      )

    );

  }

}
