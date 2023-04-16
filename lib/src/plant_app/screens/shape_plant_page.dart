import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/plant_app/model/data_model.dart';
import 'detail_page.dart';

class ShapePlantPage extends StatelessWidget {
  const ShapePlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.search, size: 30),
                onPressed: () {},
              )
            ],
          ),
          const Text('Shape',
              style: TextStyle(color: Colors.grey, fontSize: 17)),
          const SizedBox(height: 7),
          const Text(
            'Plants',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(
                          plant: shape[index],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: shape[index].title!,
                        child: Image.network(shape[index].image!),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        shape[index].title!,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        shape[index].discription!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "\$${shape[index].price}",
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              "+",
                              style: TextStyle(fontSize: 22),
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Divider(),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
