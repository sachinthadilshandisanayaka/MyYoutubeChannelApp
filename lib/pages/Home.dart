import 'dart:ui';
import 'package:dasaproduction/tabs/home/cartTab.dart';
import 'package:dasaproduction/tabs/home/videosTab.dart';
import 'package:dasaproduction/videos/videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  List<Widget> itemData = [];
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  void getVideos() {
    List<dynamic> readData = VIDEO_DATA;
    List<Widget> listVideos = [];

    readData.forEach((element) {
      listVideos.add(Container(
        child: Card(
          margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                new BoxShadow(
                  blurRadius: 7,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          element['name'],
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SansitaSwashed',
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/${element["image"]}",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
    });
    setState(() {
      itemData = listVideos;
    });
  }

  @override
  void initState() {
    super.initState();
    getVideos();
    controller.addListener(() {
      double value = controller.offset / 150;
      setState(() {
        closeTopContainer = controller.offset > 30;
        topContainer = value;
      });
    });

    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollController.dispose();
  }

  // final CategoriesScroller categoriesScroller = CategoriesScroller();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(46, 64, 83, 1.0),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Dasa Production',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            onPressed: () => {},
            icon: const Icon(Icons.menu),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search),
                color: Colors.black,
                onPressed: () => {}),
          ],
        ),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool boxIsSroll) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                forceElevated: boxIsSroll,
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.video_label),
                      text: 'Videos',
                    ),
                    Tab(
                      icon: Icon(Icons.people),
                      text: 'Cart',
                    )
                  ],
                  controller: _tabController,
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              VideosTabs(
                itemData: itemData,
                controller: controller,
                closeTopContainer: closeTopContainer,
                topContainer: topContainer,
              ),
              CartTabs(),
            ],
          ),
        ),
      ),
    );
  }
}
