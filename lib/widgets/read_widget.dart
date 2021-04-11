import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';

class ReadNewsWidget extends StatelessWidget {
  final String urlImage;
  final String title;
  final String content;

  const ReadNewsWidget({Key key, this.urlImage, this.title, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        urlImage != null
            ? Container(
                margin: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: Image.network(
                  urlImage,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace stackTrace) {
                    return Text('No image');
                  },
                ),
              )
            : Container(),
        Html(data: content)
      ],
    );
  }
}
