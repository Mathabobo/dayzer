import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String project;
  final String time;
  final String deadline;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.project,
      required this.time,
      required this.deadline});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        // height: 20,

        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style:  const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              const SizedBox(height: 4),
               Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  project,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              const SizedBox(height: 17),
              Row(
                children:  [
                  const Icon(Icons.access_alarm, size: 18),
                  const SizedBox(width: 5),
                  Text(deadline)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
