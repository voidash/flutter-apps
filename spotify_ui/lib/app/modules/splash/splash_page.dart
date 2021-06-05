import 'package:flutter/material.dart';
import 'package:spotify_ui/app/vendor/fade_on_scroll.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key}) : super(key: key);

  final scrollController = ScrollController();

Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
                      children: [CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              title: FadeOnScroll(
                scrollController: scrollController,
                zeroOpacityOffset:400 ,
                fullOpacityOffset: 200,
                child: Text("I'm going to fade"),
              ),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return ListTile(
                  title: Text('Row $index'),
                );
              }),
            )
        ],
      ),
      ]
          ),
    );
  }
}
