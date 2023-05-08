import 'package:dayzer_task_app/widgets/profile_picture.dart';
import 'package:dayzer_task_app/widgets/project_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 238, 241),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 5),
              child: Column(
                children: [
                  //Appbar --> profile pic, greeting & notification bell

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: const [
                          //profile picture
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: ProfilePicture(
                              image: 'lib/images/girla.jpeg',
                              radius: 23,
                            ),
                          ),

                          //Text
                          Text(
                            'Hi, Kira!',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),

                      //Notification bell
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_rounded,
                            ),
                          ),
                          Positioned(
                            left: 5,
                            bottom: 6,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.circle_sharp,
                                color: Colors.red,
                                size: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //Tasks for today
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Tasks for today:',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 14,
                      ),
                      const Text(
                        ' 5 available',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //Search bar
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(18, 1, 6, 1),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.search, size: 25),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),

                  //Last connections section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Last connections',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('See all', style: TextStyle(color: Colors.grey))
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ProfilePicture(
                          image: 'lib/images/girlb.jpeg', radius: 25),
                      ProfilePicture(image: 'lib/images/mana.jpeg', radius: 25),
                      ProfilePicture(
                          image: 'lib/images/girlc.jpeg', radius: 25),
                      ProfilePicture(image: 'lib/images/manb.jpeg', radius: 25),
                      CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 235, 226, 229),
                          radius: 25,
                          child: Text('+5',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 13))),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),

          //Active projects section
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 1,
              builder: ((context, scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 252, 250, 250),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Active projects',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      //projects
                      const ProjectCard(
                          title: 'Numero 10',
                          project: 'Blog and social posts',
                          time: '4h',
                          deadline: 'Deadline is today'),
                      const ProjectCard(
                          title: 'Grace Aroma',
                          project: 'New capmain review',
                          time: '7d',
                          deadline: 'Deadline in 7days'),
                      const ProjectCard(
                          title: 'Flutter',
                          project: 'Dayzer task app',
                          time: '10h',
                          deadline: 'Deadline is today'),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
