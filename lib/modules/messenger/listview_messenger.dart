import 'package:flutter/material.dart';

class ListViewMessenger extends StatelessWidget {
  const ListViewMessenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-1/c0.8.160.160a/p160x160/270630393_1346513822462098_1915130004092521715_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_ohc=Y0NhiM8Hb0cAX9KhZWb&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-cM-fPq-XitPBi-Zuw_Yk6A8Yj00SFwYDC-wpKp_Yx_g&oe=61EAD207'),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.black,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
        elevation: 0,
        actions: [
          CircleAvatar(
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 15,
                )),
            backgroundColor: Colors.grey[700],
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 15,
                )),
            backgroundColor: Colors.grey[700],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                child: ListView.separated(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) => StoryItem(),
                    separatorBuilder: (context , index) => SizedBox(width: 15,),
                    itemCount: 15
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index) => ChatItem(),
                  separatorBuilder: (context, index ) => SizedBox(height: 20,),
                  itemCount: 15)
            ],
          ),
        ),
      ),
    );
  }

  Widget StoryItem() =>  Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://scontent.fcai2-1.fna.fbcdn.net/v/t39.30808-1/c0.12.240.240a/p240x240/270630393_1346513822462098_1915130004092521715_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_ohc=dklpEQXNGRkAX_FrWDV&_nc_ht=scontent.fcai2-1.fna&oh=00_AT_Y_wkh5KdpASoYUdcQbLThrXMwjRasVKXzYo4tt_Sn3Q&oe=61F08C0E'),
            ),
            Container(
              padding: EdgeInsets.only(right: 2, bottom: 2),
              child: CircleAvatar(
                radius: 9,
                backgroundColor: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 3, bottom: 3),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.greenAccent,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          "Gerges El Mahedy",
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );
  Widget ChatItem() =>  Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://scontent.fcai2-1.fna.fbcdn.net/v/t39.30808-1/c0.12.240.240a/p240x240/270630393_1346513822462098_1915130004092521715_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=7206a8&_nc_ohc=dklpEQXNGRkAX_FrWDV&_nc_ht=scontent.fcai2-1.fna&oh=00_AT_Y_wkh5KdpASoYUdcQbLThrXMwjRasVKXzYo4tt_Sn3Q&oe=61F08C0E'),
          ),
          Container(
            padding: EdgeInsets.only(right: 2, bottom: 2),
            child: CircleAvatar(
              radius: 9,
              backgroundColor: Colors.black,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 3, bottom: 3),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wesa Adel ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "welcome mina how are you are you phone i hope to see my messeage",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle),
                  ),
                ),
                Text(
                  "02.00 PM",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}
