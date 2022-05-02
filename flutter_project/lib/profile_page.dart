import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0A66C2);

class Profilepage extends StatefulWidget{
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  final double coverHeight = 275;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;

    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
              children: <Widget>[
                Container(
                  child:
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      buildCoverImage(),
                      Positioned(
                        top: top,
                        child: buildProfileImage(),
                      ),
                      Positioned(
                        top: 40,
                        left: 10,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined),
                          color: Colors.white,
                          iconSize: 30,
                        ),
                      ),
                      Positioned(
                        top: top+150,
                        child: const Text(
                          'Shubham Rawool',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.account_box_outlined,
                                size: 35.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                            const SizedBox(width: 24.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text(
                                  "About",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: primaryColor,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  "Hello, I am Shubham Rawool, a student from \n VESIT",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12.0,
                                    fontFamily: 'Quicksand',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.access_time,
                                size: 35.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                            const SizedBox(width: 24.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text(
                                  "Activity",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: primaryColor,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  "101 Followers",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  "Completed Internship at Trivia Softwares\n "
                                      "for the role of Django Web Developer",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () { },
                              icon: const Icon(
                                Icons.cast_for_education_rounded,
                                size: 35.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                            const SizedBox(width: 24.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text(
                                  "Education",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: primaryColor
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  "Student at Vivekanand Education Society's\n"
                                      "Institute of Technology",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
                const SizedBox(height: 50),
              ]
          ),
        )
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.network('https://images.unsplash.com/photo-1555099962-4199c345e5dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c291cmNlJTIwY29kZXxlbnwwfHwwfHw%3D&w=1000&q=80',
      width: double.maxFinite,
      height: coverHeight,),
  );

  Widget buildProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuhO9a_BfEPT5RNEunoAkxFFKZbnMWopS52g&usqp=CAU'),
  );
}

