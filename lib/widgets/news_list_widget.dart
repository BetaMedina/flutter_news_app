import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCardsWidget extends StatelessWidget {
  final String urlImage;
  final String content;
  final String title;

  const ListCardsWidget({Key key, this.urlImage,this.content,this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title ?? 'No title'),
      leading: urlImage != null
          ? Image.network(
              urlImage,
              width: 50,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace stackTrace) {
                return Text('No image');
              },
            )
          : Text('No image'),
      subtitle: Text(
        content ?? 'No text',
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}