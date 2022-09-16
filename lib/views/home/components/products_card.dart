import 'package:flutter/material.dart';

final List<Map<String, String>> productData = [

];

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container();
        });
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.time,
    required this.title,
    required this.location,
    required this.price,
  }) : super(key: key);
  final String imageUrl;
  final String time;
  final String title;
  final String location;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(imageUrl),
          ),
          Text(
            time,
            style: const TextStyle(fontSize: 10, color: Colors.grey),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 17, color: Colors.black),
          ),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              Text(
                time,
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
