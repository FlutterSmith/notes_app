import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  print('search');
                },
                icon: const Icon(Icons.search, color: Colors.white, size: 27),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFCE7F),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 180,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Flutter tips',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        print('search');
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 27,
                      )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Build your Career with ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Tharwat Samy',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
