import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  /*
  * Widget build
  * @param itemBuilder(BuildContext, int)
  * */
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, position) => GestureDetector(
              child: createListWidget(),
          )
        )
    );

  Widget createListWidget() => Card(
    child: Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            child: Image.network("https://66.media.tumblr.com/7e0fcfa1978f911652e51f50b24afcf9/tumblr_p3dng4pfgO1ui7oe1o1_400.jpg"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text("Hellow renaldi"),
              )
            ],
          )
        ],
      ),
    ),
  );
}