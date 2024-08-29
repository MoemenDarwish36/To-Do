import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Owner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("3h"),
                      SizedBox(width: 7,),
                      Icon(Icons.public,size: 17,)
                    ],
                  )

                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Text("My Post" ,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30),),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Text("100"),
                SizedBox(width: 10,),
                Image.asset("assets/like.jpg",
                  width: 40,),
                Spacer(),
                Text("100 comments"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding:EdgeInsets.all(17) ,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(width: 1 ,color: Colors.black)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/singleLike.jpg",width: 20,),
                    SizedBox(width: 10,),
                    Text("Like"),

                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/comment.jpg",width: 20,),
                    SizedBox(width: 10,),
                    Text("Comment")
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/share.png",width: 20,),
                    SizedBox(width: 10,),
                    Text("Share"),
                  ],
                )

              ],
            ),
          )


        ],
      ),
    );
  }
}
