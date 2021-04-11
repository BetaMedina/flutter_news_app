import 'package:flutter/material.dart';
import 'package:news_tech_app/controllers/news_controller.dart';
import 'package:news_tech_app/widgets/loading_widget.dart';
import 'package:news_tech_app/widgets/news_list_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NewsController controller = NewsController();

  @override
  initState() {
    super.initState();
    controller.fetchAll();
    print(controller.results);
  }

  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(
      r"<[^>]*>",
      multiLine: true,
      caseSensitive: true
    );

    return htmlText.replaceAll(exp, '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: AnimatedBuilder(
            animation: controller.state,
            builder: (context, child) {
              return controller.state.value == HomeStates.success
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.results.length,
                      itemBuilder: (context, index) {
                        final news = controller.results[index];
                        print(news);
                        return 
                        new GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "/news",arguments:{
                                'title': news.webTitle,
                                'urlImage': news.fields.thumbnail,
                                'content': news.fields.body
                              });
                            },
                            child:new ListCardsWidget(
                            title: news.webTitle,
                            urlImage: news.fields.thumbnail,
                            content:removeAllHtmlTags(news.fields.body)));
                      })
                  : LoadingWidget();
            }));
  }
}
