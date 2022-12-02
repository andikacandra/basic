import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            "candra_1216",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.list,
              color: Colors.black,
            )),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar,
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: ProfilePicture(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '0,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Posts', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '0,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Followers', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '0,000',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text('Following', style: TextStyle(fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Andika Candra",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and type setting industry.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: BorderSide(width: 0, color: Colors.white),
                              backgroundColor: Colors.grey[200]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Share Profile',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: BorderSide(width: 0, color: Colors.white),
                              backgroundColor: Colors.grey[200]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.person_add_outlined,
                            color: Colors.black,
                            size: 16,
                          ),
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: BorderSide(width: 0, color: Colors.white),
                              backgroundColor: Colors.grey[200]),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(title: "Story 1", imageId: 654),
                  StoryItem(title: "Story 2", imageId: 549),
                  StoryItem(title: "Story 3", imageId: 352),
                  StoryItemNew()
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(Icons.grid_on_rounded),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(Icons.play_lesson_outlined),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(Icons.person_pin_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.title,
    required this.imageId,
  }) : super(key: key);

  final String title;
  final int imageId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(72 / 2),
                ),
              ),
              Container(
                height: 69,
                width: 69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(69 / 2),
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://picsum.photos/id/$imageId/100/100'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$title",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class StoryItemNew extends StatelessWidget {
  const StoryItemNew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(72 / 2),
                ),
              ),
              Container(
                height: 69,
                width: 69,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(69 / 2),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "New",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 88,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.pink.shade400,
            Colors.amber,
          ],
        ),
        borderRadius: BorderRadius.circular(88 / 2),
      ),
      child: Center(
        child: Container(
          height: 84,
          width: 84,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(84 / 2),
            border: Border.all(color: Colors.white, width: 2),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://picsum.photos/id/334/100/100'),
            ),
          ),
        ),
      ),
    );
  }
}
