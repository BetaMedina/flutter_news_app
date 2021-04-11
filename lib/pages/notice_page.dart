import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_tech_app/widgets/read_widget.dart';

class NoticePage extends StatefulWidget {
  final String title;
  const NoticePage({Key key, this.title}) : super(key: key);
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    print(arguments);
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            ReadNewsWidget(content: arguments['content'],title: arguments['title'],urlImage: arguments['urlImage'])
          ]),
        ));
  }
}
