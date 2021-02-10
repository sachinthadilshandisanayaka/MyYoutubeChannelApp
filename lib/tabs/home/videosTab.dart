import 'package:dasaproduction/widgets/home/ScrollItem.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideosTabs extends StatefulWidget {
  VideosTabs({Key key, @required this.itemData, this.controller, this.closeTopContainer, this.topContainer}) : super(key: key);

  List<Widget> itemData = [];
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  @override
  _VideosTabsState createState() => _VideosTabsState(itemData, controller, closeTopContainer, topContainer);
}

class _VideosTabsState extends State<VideosTabs> {
  _VideosTabsState(this.itemData, this.controller, this.closeTopContainer, this.topContainer);

  List<Widget> itemData = [];
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  final CategoriesScroller categoriesScroller = CategoriesScroller();
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}