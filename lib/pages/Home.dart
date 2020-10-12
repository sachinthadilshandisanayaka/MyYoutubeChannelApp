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
                children: [
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
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
    );
  }
}
