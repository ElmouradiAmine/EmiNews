import 'package:flutter/material.dart';

//Components
import 'package:emi_event/components/card_news.dart';
//Utils
import 'package:emi_event/utils/constants.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(12.0),
      children: <Widget>[
        CardNews(
          title: 'This is the title',
          description: 'This is the description of the news, a catchy one.',
          clubLogoUrl: kUrlEnactusLogo,
          views: 3409,
          likes: 101,
          url: kUrl1,
        ),
        CardNews(
          title: 'This is the title',
          description: 'This is the description of the news, a catchy one.',
          clubLogoUrl: kUrlEnactusLogo,
          views: 2890,
          likes: 101,
          url: kUrl2,
        ),
        CardNews(
            title: 'This is the title',
            description: 'This is the description of the news, a catchy one.',
            clubLogoUrl: kUrlEnactusLogo,
            views: 1009,
            likes: 101,
            url: kUrl3),
        CardNews(
            title: 'This is the title',
            description: 'This is the description of the news, a catchy one.',
            clubLogoUrl: kUrlEnactusLogo,
            views: 11329,
            likes: 101,
            url: kUrl4),
      ],
    );
  }
}
