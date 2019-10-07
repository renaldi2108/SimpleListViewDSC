import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/mymodel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // TODO: global variable
  List<MyModel> data;

  @override
  void initState() {
    // TODO: added list when in initState

    data = [
      MyModel("renaldi", "depok", "20"),
      MyModel("renaldi 2", "depok", "20"),
      MyModel("renaldi 3", "depok", "20"),
      MyModel("renaldi 4", "depok", "20"),
      MyModel("renaldi 5", "depok", "20"),
      MyModel("renaldi 6", "depok", "20"),
      MyModel("renaldi 7", "depok", "20"),
      MyModel("renaldi 8", "depok", "20"),
      MyModel("renaldi 9", "depok", "20"),
      MyModel("renaldi 10", "depok", "20")
    ];
    super.initState();
  }

  /*
  * Widget build
  * @param itemBuilder(BuildContext, int)
  * */
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0]),
            createListWidget(context, data[0])
          ],
        )
    );

  /*
  * @param createListWidget(BuildContext, MyModel)
  * */
  Widget createListWidget(context, MyModel data) => Card(
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
                child: Text(data.name),
              ),
              Container(
                child: Text(data.address),
              ),
              Container(
                child: Text(data.age),
              )
            ],
          )
        ],
      ),
    ),
  );
}