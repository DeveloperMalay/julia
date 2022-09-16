import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          )),
      body: Column(children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png',
              ),
            ),
            Column(
              children: const [
                Text(
                  "John Doe",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '+91 9239489823',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const Icon(Icons.edit_note_outlined),
          ],
        ),
      ]),
    );
  }
}
