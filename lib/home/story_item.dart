import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.all(10),
      width: 130,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(
                  'assets/facebookStory.jpg'),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(24)
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person),
          ),
          Spacer(),
          Text('Owner',
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),

    );
  }
}
