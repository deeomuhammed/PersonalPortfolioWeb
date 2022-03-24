import 'package:deeoweb/fixed.dart';
import 'package:deeoweb/model/content_view.dart';
import 'package:deeoweb/model/customTabBar.dart';
import 'package:deeoweb/model/custom_tab.dart';
import 'package:deeoweb/views/about.dart';
import 'package:deeoweb/views/contact.dart';
import 'package:deeoweb/views/hom.dart';
import 'package:deeoweb/views/resume.dart';
import 'package:deeoweb/views/projects.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  double? screenwidth;
  double? screenheight;
  double? bottompadding;
  double? toppadding;
  late TabController tabController;

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: Top(),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content: AboutView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Resume'),
      content: Resume(),
    ),
    ContentView(
      tab: CustomTab(title: 'Portfolio'),
      content: ProjectsView(),
    ),
    ContentView(
      tab: CustomTab(title: 'Contact'),
      content: Contact(),
    )
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    toppadding = screenheight! * .01;
    bottompadding = screenheight! * .01;
    return Scaffold(
        endDrawer: drawer(),
        key: scaffoldkey,
        body: LayoutBuilder(builder: (ctx, constrains) {
          if (constrains.maxWidth > 715) {
            return Desktop();
          } else {
            return Mobile();
          }
        }));
  }

  Widget Desktop() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
            controller: tabController,
            tabs: contentViews.map((e) => e.tab).toList()),
        Container(
          height: screenheight! * 0.92,
          child: TabBarView(
              controller: tabController,
              children: contentViews.map((e) => e.content).toList()),
        )
      ],
    );
  }

  Widget Mobile() {
    return Padding(
      padding: EdgeInsets.only(
        right: screenwidth! * .05,
      ),
      child: Container(
        width: screenheight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  scaffoldkey.currentState?.openEndDrawer();
                },
                icon: Icon(Icons.menu_rounded,
                    color: primaryColor, size: screenwidth! * .08))
          ],
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(
          children: [
                Container(
                  height: screenheight! * .05,
                )
              ] +
              contentViews
                  .map((e) => Container(
                        child: ListTile(
                          title: Text(e.tab.title),
                          onTap: () {},
                        ),
                      ))
                  .toList()),
    );
  }
}
