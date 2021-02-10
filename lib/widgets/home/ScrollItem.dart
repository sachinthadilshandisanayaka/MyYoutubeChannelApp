import 'package:flutter/material.dart';

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
                      image: DecorationImage(
                        image: new AssetImage('assets/images/harshana.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Harshana madushanka',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0,
                              fontFamily: 'AmaticSC',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(4, 4),
                                  blurRadius: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Director',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(3, 3),
                                  blurRadius: 15,
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
                      image: DecorationImage(
                        image: new AssetImage('assets/sanju.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Sachintha Dilshan',
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
                              'Actor',
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
                      image: DecorationImage(
                        image: new AssetImage('assets/images/akila.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Gagan Akila',
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
                            'Actor',
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
                      image: DecorationImage(
                        image: new AssetImage('assets/shan.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Pramuditha Pasanga',
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
                            'Actor',
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
                      image: DecorationImage(
                        image: new AssetImage('assets/images/tharindu.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Tharindu Eranda',
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
                            'Actor',
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
                      image: DecorationImage(
                        image: new AssetImage('assets/images/umasara.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Umasara Sandamin',
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
                            'Actor',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(3, 3),
                                  blurRadius: 15,
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
                      image: DecorationImage(
                        image: new AssetImage('assets/images/kavindu.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Kavindu Maushanka',
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
                            'Actor',
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
