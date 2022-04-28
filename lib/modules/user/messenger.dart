import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messenger extends StatelessWidget {
  const messenger({Key? key}) : super(key: key);

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
      body: Container(
        color: Colors.black,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [

                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                        backgroundColor: Colors.grey[700],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "your Story",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(

                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/271592872_1470761066677100_7799195322161573906_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=2LJtsMmRHH0AX9LF5Ry&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9hqcsASGZfx2ryWueSCCCGVTm0nUenxjZCTlVZGBMNXw&oe=61EA737E"),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Merna Faried",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/s320x320/242299008_4528486990535876_814798524923665795_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_ohc=B1fZCarUqKoAX_nNnez&_nc_ht=scontent.fcai21-3.fna&oh=00_AT98NiBllw58ND5meSoC8DBQ6D7ij9w3Qyi9_csKRMIcJw&oe=61E9E873'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Kiroles Adel",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/p320x320/271791559_3018701328344025_7168464572121380268_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=CoYkDcbbZ08AX8liksm&_nc_ht=scontent.fcai21-3.fna&oh=00_AT8GKUN7qlVkhFz9rLtV1qFMBrYr-WerpEHj7NXlAFUlsQ&oe=61EA150C'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Wesa Adel",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/271956193_951316959117932_4050443469180500774_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=rpafN0ueZG0AX-Hn74l&_nc_ht=scontent.fcai21-3.fna&oh=00_AT-FCACOKlB8fq2O57vC9nCNuub_HVzhONQOr7VpapRKQw&oe=61E9DF67'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Dona Micheal",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/s320x320/239404389_3037213946605324_5714424646681421681_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_ohc=TIKvrxLlN1AAX875COa&tn=GCxvuhkNtleHnhXv&_nc_ht=scontent.fcai21-3.fna&oh=00_AT_qQN2RwRzSn7_NA5gpDRg9lTVuCfGIH-hGQ4PA4Dkutg&oe=61EB4A38'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Margo Micheal",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Popos Anwer",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-1/s320x320/271849849_470242764721181_7929140270372250049_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_ohc=AYG40qaZabwAX9NEwQU&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-dNzggAPgSe3d8NTKUHzMhshXh7aivxD9WOqK4Cacvqw&oe=61EA4EAA'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                          "Enjy Melad",
                          style: TextStyle(
                            color: Colors.white,


                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 2,bottom: 2),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 3,bottom: 3),
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Gergess El Mahdy ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/271592872_1470761066677100_7799195322161573906_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=2LJtsMmRHH0AX9LF5Ry&_nc_ht=scontent.fcai21-4.fna&oh=00_AT9hqcsASGZfx2ryWueSCCCGVTm0nUenxjZCTlVZGBMNXw&oe=61EA737E'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Merna  Faried ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/s320x320/242299008_4528486990535876_814798524923665795_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_ohc=B1fZCarUqKoAX_nNnez&_nc_ht=scontent.fcai21-3.fna&oh=00_AT98NiBllw58ND5meSoC8DBQ6D7ij9w3Qyi9_csKRMIcJw&oe=61E9E873'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Kiroles Adel ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/p320x320/271791559_3018701328344025_7168464572121380268_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=7206a8&_nc_ohc=CoYkDcbbZ08AX8liksm&_nc_ht=scontent.fcai21-3.fna&oh=00_AT8GKUN7qlVkhFz9rLtV1qFMBrYr-WerpEHj7NXlAFUlsQ&oe=61EA150C'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-6/271956193_951316959117932_4050443469180500774_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=rpafN0ueZG0AX-Hn74l&_nc_ht=scontent.fcai21-3.fna&oh=00_AT-FCACOKlB8fq2O57vC9nCNuub_HVzhONQOr7VpapRKQw&oe=61E9DF67'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Donna Micheal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t39.30808-1/s320x320/239404389_3037213946605324_5714424646681421681_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=7206a8&_nc_ohc=TIKvrxLlN1AAX875COa&tn=GCxvuhkNtleHnhXv&_nc_ht=scontent.fcai21-3.fna&oh=00_AT_qQN2RwRzSn7_NA5gpDRg9lTVuCfGIH-hGQ4PA4Dkutg&oe=61EB4A38'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Margoo Micheal",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Pops Anwer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-1/s320x320/271849849_470242764721181_7929140270372250049_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=7206a8&_nc_ohc=AYG40qaZabwAX9NEwQU&_nc_ht=scontent.fcai21-4.fna&oh=00_AT-dNzggAPgSe3d8NTKUHzMhshXh7aivxD9WOqK4Cacvqw&oe=61EA4EAA'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Enjy Adel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Gergess El Mahdy ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Gergess El Mahdy ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Gergess El Mahdy ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://scontent.fcai21-3.fna.fbcdn.net/v/t1.6435-1/s320x320/204466304_4596015880426846_6594108712410952569_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=7206a8&_nc_ohc=mSOZ-GYY_KYAX-AsgfI&_nc_ht=scontent.fcai21-3.fna&oh=00_AT81MN_QiQGIKJA6w7YG4q5wijDbFG2qA3pzu1_8phGhwA&oe=620A080F'),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 2,bottom: 2),
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.black,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 3,bottom: 3),
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
                                  "Gergess El Mahdy ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold

                                  ),
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
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "02.00 PM",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),

                    ),


                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
