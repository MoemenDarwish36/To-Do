import 'package:facebook/home/post_item.dart';
import 'package:facebook/home/story_item.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              ///this object (separated) to make space between widget
              child: ListView.separated(
                ///to makes list view scroll horizontal
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const StoryItem(),
                ///this parameter to put a new widget between
                ///widget you need to draws
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                itemCount: 20,
              ),
            ),
             Expanded(
                flex: 6,
                child:ListView.separated(
                    itemBuilder: (context ,index) => PostItem(),
                    separatorBuilder: (context ,index) => SizedBox(height: 20,),
                    itemCount: 10
                )
             )
          ],
        ),
      ),
    );
  }
}
