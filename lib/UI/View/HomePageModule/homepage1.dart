import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/UI/View/HomePageModule/appbar_data.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:portfolio/Utils/Constants/style_constant.dart';
//1,3,4,7,
import '../../../Data/Models/pagesModel.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var widgetList = [
      PagesData(
        name: 'home',
        id: 1,
        color: Colors.blue,
        height: size.height * 1,
      ),
      PagesData(
        name: 'resume',
        id: 2,
        color: Colors.blueGrey,
        height: size.height * 1,
      ),
      PagesData(
        name: 'about',
        id: 3,
        color: Colors.deepPurpleAccent,
        height: size.height * 1,
      ),
      PagesData(
        name: 'contact',
        id: 4,
        color: Colors.deepPurple,
        height: size.height * 1,
      ),
    ];
    //live:.cid.5e8fe7778f15e957
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: true,
                backgroundColor: Theme.of(context).colorScheme.primary,
                expandedHeight: size.height * 0.7,
                floating: false,
                pinned: true,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    collapseMode: CollapseMode.parallax,
                    title: Container(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppbarButton(
                            onTap: () {
                              setState(() => counter = widgetList[0].id-1);
                              _scrollToCounter();
                            },
                            name: widgetList[0].name,
                          ),
                          AppbarButton(
                            onTap: () {
                              setState(() => counter = widgetList[1].id-1);
                              _scrollToCounter();
                            },
                            name: widgetList[1].name,
                          ),
                          AppbarButton(
                            onTap: () {
                              setState(() => counter = widgetList[2].id-1);
                              _scrollToCounter();
                            },
                            name: widgetList[2].name,
                          ),
                          AppbarButton(
                            onTap: () {
                              setState(() => counter = widgetList[3].id-1);
                              _scrollToCounter();
                            },
                            name: widgetList[3].name,
                          ),
                        ],
                      ),
                    ),
                    background: Image.asset(
                      'assets/images/png/keyboards.png',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: ListView.builder(
            scrollDirection: Axis.vertical,
            controller: controller,
            itemCount: widgetList.length,
            itemBuilder: (context, index) {
              return _wrapScrollTag(
                  child: Container(
                    color: widgetList[index].color,
                    height: widgetList[index].height,
                    child: Center(child: Text(widgetList[index].name,style: TextStyle(fontSize: 50),)),
                  ),
                  index: index);
            },
          )),
    );
  }

  int counter = -1;

  Future _scrollToCounter() async {
    await controller.scrollToIndex(counter,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(counter);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        highlightColor: Colors.black.withOpacity(0.1),
        child: child,
      );
}
