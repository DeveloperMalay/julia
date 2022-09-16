import 'package:flutter/material.dart';
import 'package:julia/views/home/components/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Bangalore',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.notifications_outlined),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Holo',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Buy or Sell'),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: 'Find Vehicles,Furniture and more ... '),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'What are you looking for?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text('See all'))
              ],
            ),
            Category(),
            const Text(
              'Best Recommendations',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
