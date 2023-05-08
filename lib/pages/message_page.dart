import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final DraggableScrollableController drag = DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 230, 167),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 30, 18, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 28,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz_rounded))
                ],
              ),
            ),
            // const SizedBox(height: 2),
            const Center(
                child: Divider(
              color: Colors.black,
              indent: 155,
              endIndent: 155,
            )),
            Expanded(
              child: DraggableScrollableSheet(
                expand: true,
                minChildSize: 0.25,
                maxChildSize: 1,
                initialChildSize: 1,
                controller: drag,
                snap: true,
                builder: ((context, scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 252, 250, 250),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //todo: Messaging ID
                          const SizedBox(
                            height: 25,
                          ),

                          const Text(
                            'Messaging ID',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -1),
                            // textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          //todo: your daily plan
                          Row(
                            children: const [
                              Text(
                                'Your daily plan',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                '70%',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(
                            thickness: 4.0,
                            color: Colors.black,
                            endIndent: 80,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('4 of 6 completed'),
                          const SizedBox(
                            height: 25,
                          ),

                          //todo: tasks finish + tracked hours
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Tasktracker(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.orange[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: 150,
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      '3,2',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.access_time_filled,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text('Tracked hours'),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),

                          //todo: overview
                          const Text(
                            'Overview',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Messaging ID framework development for the marketing branch and the publicity bureau and implemented a draft on the framework.',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 25,
                          ),

                          //todo: Members connected
                          const Text(
                            'Members connected',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              ProfilePicture(
                                  image: 'lib/images/girlb.jpeg', radius: 25),
                              ProfilePicture(
                                  image: 'lib/images/mana.jpeg', radius: 25),
                              ProfilePicture(
                                  image: 'lib/images/girlc.jpeg', radius: 25),
                              ProfilePicture(
                                  image: 'lib/images/manb.jpeg', radius: 25),
                              CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 226, 229),
                                  radius: 25,
                                  child: Text('+5',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13))),
                            ],
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tasktracker extends StatelessWidget {
  const Tasktracker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.orange[200],
          borderRadius: BorderRadius.circular(10),
        ),
        width: 150,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '17',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.task_rounded,
                  size: 12,
                ),
                SizedBox(
                  width: 3,
                ),
                Text('Tasked finished'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
