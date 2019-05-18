import 'package:flutter/material.dart';

//Components
import 'package:emi_event/components/appbar_title.dart';
import 'package:emi_event/components/colored_tabbar.dart';
import 'package:emi_event/components/custom_tab.dart';
//Pages
import 'package:emi_event/pages/news_page.dart';

//Utils
import 'package:emi_event/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: true,
              leading: Icon(
                Icons.menu,
                size: 30,
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_vert,
                    size: 30,
                  ),
                )
              ],
              title: AppBarTitle(
                title: 'EmiNews',
                image: Image.asset(
                  'images/emi_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  kUrlEmi,
                  fit: BoxFit.fill,
                ),
              ),
              pinned: true,
              elevation: 10.0,
              expandedHeight: 200.0,
              bottom: ColoredTabBar(
                color: Colors.black.withOpacity(0.5),
                tabBar: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 5.0,
                  tabs: [
                    CustomTab(
                        label: 'News', icon: Icons.whatshot, color: Colors.red),
                    CustomTab(
                        label: 'Events', icon: Icons.event, color: Colors.blue),
                    CustomTab(
                        label: 'Games', icon: Icons.games, color: Colors.green),
                  ],
                  controller: controller,
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            NewsPage(),
            Text("Tab 2"),
            Text("Tab 3"),
          ],
        ),
      ),
    );
  }
}
