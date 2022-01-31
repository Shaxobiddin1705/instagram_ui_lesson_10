import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  List storyImages = [
    "assets/images/post_img_0.jpg", "assets/images/post_img_1.jpg", "assets/images/post_img_2.jpg",
    "assets/images/post_img_3.jpg", "assets/images/post_img_4.jpg", "assets/images/post_img_5.jpg",
  ];

  List storyNames = [
    "Friends", "Sport", "Design", "Game", "Flutter", "Science",
  ];

  List gridviewImages = [
    "assets/images/post_img_0.jpg", "assets/images/post_img_1.jpg", "assets/images/post_img_2.jpg",
    "assets/images/post_img_3.jpg", "assets/images/post_img_4.jpg", "assets/images/post_img_5.jpg",
    "assets/images/post_img_0.jpg", "assets/images/post_img_1.jpg", "assets/images/post_img_2.jpg",
    "assets/images/post_img_3.jpg", "assets/images/post_img_4.jpg", "assets/images/post_img_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              color: isDarkMode ? Colors.grey : Colors.black,
              size: 14,
            ),
            Text(
              "__shaxobiddin__",
              style: TextStyle(
                  color: isDarkMode ? Colors.grey : Colors.black, fontSize: 17),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: isDarkMode ? Colors.grey : Colors.black,
              size: 19,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              icon: Icon(
                Icons.menu,
                color: isDarkMode ? Colors.grey : Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //#AvatarPostFollowersFollowing
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.135,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: isDarkMode ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 2,
                          color: isDarkMode
                              ? Colors.grey.shade800
                              : Colors.grey.shade300),
                    ),
                    child: const CircleAvatar(
                      radius: 43,
                      backgroundImage:
                          AssetImage("assets/images/avatar_img.jpg"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "54",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "834",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "162",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                color:
                                    isDarkMode ? Colors.white : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15,),

            //#AboutMe
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shaxobiddin Sultonov", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
                  Text("The student of Tashkent Financial Institute", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
                  Text("The student of PDP Academy", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 15,),

            //#EditProfile
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300),
              ),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                  color: isDarkMode ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 0,
                  onPressed: (){},
                child: Text("Edit Profile", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
              ),
            ),

            const SizedBox(height: 10,),

            //#story
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * 0.12,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: storyImages.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return story(index);
                  }
              ),
            ),

            //#Icons
            Container(
              height: MediaQuery.of(context).size.height * 0.045,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        children: [
                          Icon(CupertinoIcons.rectangle_split_3x3, size: 28, color: isDarkMode ? Colors.white : Colors.black,),
                          const SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: isDarkMode ? Colors.white : Colors.black))
                            ),
                          ),
                        ],
                      ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(CupertinoIcons.person_crop_square, size: 28, color: isDarkMode ? Colors.white : Colors.black,),
                        const SizedBox(height: 5,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: isDarkMode ? Colors.white : Colors.black))
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //#PageView
            Container(
              height: MediaQuery.of(context).size.height * 0.68,
              alignment: Alignment.topCenter,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  posts(),
                  posts(),
                  posts(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.055,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Icon(Icons.home_outlined, color: isDarkMode ? Colors.white70 : Colors.black,),
            ),
            Expanded(
              child: Icon(Icons.search, color: isDarkMode ? Colors.white70 : Colors.black,),
            ),
            Expanded(
              child: Icon(Icons.add_box_outlined, color: isDarkMode ? Colors.white70 : Colors.black,),
            ),
            Expanded(
              child: Icon(Icons.favorite_border_outlined, color: isDarkMode ? Colors.white70 : Colors.black,),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: isDarkMode ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        width: 2,
                        color: isDarkMode
                            ? Colors.grey.shade800
                            : Colors.grey.shade300),
                  ),
                  child: const CircleAvatar(
                    radius: 13,
                    backgroundImage:
                    AssetImage("assets/images/avatar_img.jpg"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget story(index) {
    return index == 0 ? Container(
        margin: const EdgeInsets.only(right: 18),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 1, color: isDarkMode ? Colors.grey.shade800 : Colors.grey.shade400)
              ),
              child: CircleAvatar(
                radius: 29,
                backgroundColor: isDarkMode ? Colors.black : Colors.white,
                child: Icon(Icons.add, size: 35, color: isDarkMode ? Colors.white : Colors.black,),
              ),
            ),
            const SizedBox(height: 5,),
            Text("New", style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
          ],
        )
    ) : Container(
      margin: EdgeInsets.only(right: (index == storyImages.length-1) ? 0 : 18),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2.5),
            decoration: BoxDecoration(
              color: isDarkMode ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  width: 1,
                  color: isDarkMode
                      ? Colors.grey.shade800
                      : Colors.grey.shade400),
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundImage:
              AssetImage(storyImages[index]),
            ),
          ),
          const SizedBox(height: 5,),
          Text(storyNames[index], style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),),
        ],
      )
    );
  }

  Widget posts() {
    return GridView.builder(
      itemCount: gridviewImages.length,
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(1),
          child: Image.asset(gridviewImages[index], fit: BoxFit.cover,),
        );
        }
    );
  }

}
