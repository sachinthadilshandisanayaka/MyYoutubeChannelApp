import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              categoriesScroller,
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
        margin: EdgeInsets.only(right: 10),
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
                      padding: EdgeInsets.all(10),
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
