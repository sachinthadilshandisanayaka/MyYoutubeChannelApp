import 'package:dasaproduction/videos/videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> itemData = [];
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  void getVideos() {
    List<dynamic> readData = VIDEO_DATA;
    List<Widget> listVideos = [];

    readData.forEach((element) {
      listVideos.add(Container(
        // color: Colors.white,
        child: Card(
          // color: Colors.white,
          margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
          child: Container(
            // color: Color.fromRGBO(255, 235, 59, 1),
            // decoration: new BoxDecoration(),
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.black,
              //   width: 5,
              // ),
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
                      children: <Widget>[
                        Text(
                          element['name'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          element['brand'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$ ${element['price']}",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
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
  }

  final CategoriesScroller categoriesScroller = CategoriesScroller();
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
          IconButton(
              icon: Icon(Icons.person),
              color: Colors.black,
              onPressed: () => {}),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Cart',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Videos',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                opacity: closeTopContainer ? 0 : 1,
                duration: const Duration(
                  milliseconds: 300,
                ),
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  alignment: Alignment.topCenter,
                  height: closeTopContainer
                      ? 0
                      : MediaQuery.of(context).size.height * 0.3,
                  child: categoriesScroller,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: controller,
                  itemCount: itemData.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    double scale = 1.0;
                    if (topContainer > 0.3) {
                      scale = index + 0.9 - topContainer;
                      if (scale < 0) {
                        scale = 0;
                      } else if (scale > 1) {
                        scale = 1;
                      }
                    }
                    return Opacity(
                      opacity: scale,
                      child: Transform(
                        transform: Matrix4.identity()..scale(scale, scale),
                        alignment: Alignment.bottomCenter,
                        child: Align(
                          heightFactor: 0.8,
                          alignment: Alignment.topCenter,
                          child: itemData[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CategoriesScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                TextButton(
                  onPressed: () => {},
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 5),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Dasa Production',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'AmaticSC',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Discription',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 5),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Video Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30.0,
                                fontFamily: 'AmaticSC',
                                shadows: <Shadow>[
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(2, 2),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Discription',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                shadows: <Shadow>[
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                    blurRadius: 5,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: Container(
                    width: 150,
                    height: categoryHeight,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Video Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'AmaticSC',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Discription',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {},
                  child: Container(
                    width: 150,
                    height: categoryHeight,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Video Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'AmaticSC',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(2, 2),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Discription',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(1, 1),
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
