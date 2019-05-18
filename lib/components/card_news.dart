import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  final String url;
  final String clubLogoUrl;
  final String title;
  final String description;
  final int views;
  final int likes;

  const CardNews(
      {Key key,
      @required this.url,
      @required this.clubLogoUrl,
      @required this.title,
      @required this.description,
      @required this.views,
      @required this.likes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: <Widget>[
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21.0),
                        ),
                        Text(description,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontSize: 16.0))
                      ],
                    ),
                  ),
                ),
              ),
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(
                        url,
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Material(
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    ),
                    Text(
                      likes.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.remove_red_eye,
                    ),
                    Text(
                      views.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  padding: EdgeInsets.all(4.0),
                  width: 40.0,
                  height: 40.0,
                  child: Image.network(clubLogoUrl),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
