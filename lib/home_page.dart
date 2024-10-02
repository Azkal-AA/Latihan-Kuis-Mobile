import 'package:flutter/material.dart';
import 'dummy_menu.dart';

class HomePage extends StatelessWidget {
  final String username;
  HomePage({Key? key, required this.username});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu Makanan"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Expanded(child: _menu()),
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: foodMenuList.length,
      itemBuilder: (context, index) {
        final FoodMenu menu = foodMenuList[index];
        return Card(
          child: Column(
            children: [
              Text(menu.name),
              Text(menu.category),
              Text(menu.description),
              Text(menu.ingredients),
              Text(menu.cookingTime),
              Text(menu.price),
              Image.network(menu.imageAsset)
            ],
          ),
        );
      },
    );
  }
}
