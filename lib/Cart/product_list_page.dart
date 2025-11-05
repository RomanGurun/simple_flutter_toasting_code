import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'mains.dart'; // To access cartItems and saveCartData()

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Wireless Headphones",
      "price": 59.99,
      "image": "https://i.imgur.com/X4vZgU2.png",
    },
    {
      "name": "Smart Watch",
      "price": 89.99,
      "image": "https://i.imgur.com/lKJiT77.png",
    },
    {
      "name": "Sneakers",
      "price": 120.0,
      "image": "https://i.imgur.com/4LGAZ8t.png",
    },
    {
      "name": "Backpack",
      "price": 49.50,
      "image": "https://i.imgur.com/MJAkxbh.png",
    },
    {
      "name": "Backpack",
      "price": 49.50,
      "image": "https://i.imgur.com/MJAkxbh.png",
    },{
      "name": "Backpack",
      "price": 49.50,
      "image": "https://i.imgur.com/MJAkxbh.png",
    },{
      "name": "Backpack",
      "price": 49.50,
      "image": "https://i.imgur.com/MJAkxbh.png",
    },










  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Products"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => context.go('/cart'),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.55,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            name: product["name"],
            price: product["price"],
            imageUrl: product["image"],
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(name,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 6),
                Text("\$${price.toStringAsFixed(2)}",
                    style: const TextStyle(color: Colors.blueAccent)),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    cartItems.add({
                      "name": name,
                      "price": price,
                      "image": imageUrl,
                    });
                    await saveCartData();
                    context.go('/cart'); // Go to cart page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text("Add to Cart"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
