import 'package:flutter/material.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.close_outlined))
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
