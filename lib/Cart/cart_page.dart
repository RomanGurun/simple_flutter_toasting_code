import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'mains.dart'; // For cartItems and saveCartData()

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
        backgroundColor: Colors.blueAccent,
      actions: [
        Padding(padding:
        EdgeInsets.only(right: 10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blueAccent,
            ),

            onPressed:() {
          context.go('/');

        }, child: Text("Go to Products"),
        ),




        )


      ],
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty!"))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.network(item['image'], width: 50, height: 50),
            title: Text(item['name']),
            subtitle: Text("\$${item['price']}"),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                setState(() {
                  cartItems.removeAt(index);
                });
                await saveCartData();
              },
            ),
          );
        },
      ),
    );
  }
}









//
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart'; // for navigation
// import 'mains.dart'; // For cartItems and saveCartData()
//
// class CartPage extends StatefulWidget {
//   const CartPage({super.key});
//
//   @override
//   State<CartPage> createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage> {
//   Future<void> _confirmDelete(BuildContext context, int index) async {
//     final item = cartItems[index];
//     final bool? confirm = await showDialog<bool>(
//       context: context,
//       builder: (context) => AlertDialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         title: const Text(
//           "Remove Item?",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         content: Text(
//           "Are you sure you want to remove '${item['name']}' from your cart?",
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context, false),
//             child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
//             onPressed: () => Navigator.pop(context, true),
//             child: const Text("Delete"),
//           ),
//         ],
//       ),
//     );
//
//     if (confirm == true) {
//       setState(() {
//         cartItems.removeAt(index);
//       });
//       await saveCartData();
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: const Text("Item removed from cart"),
//           duration: const Duration(seconds: 2),
//           backgroundColor: Colors.redAccent,
//         ),
//       );
//     }
//   }
//
//   Future<void> _showCheckoutPopup(BuildContext context) async {
//     final bool? goToHome = await showDialog<bool>(
//       context: context,
//       builder: (context) => AlertDialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         title: const Text(
//           "Order Successful! 🎉",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         content: const Text(
//           "Your checkout is complete. Would you like to go back to the product list?",
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context, false),
//             child: const Text("Stay", style: TextStyle(color: Colors.grey)),
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
//             onPressed: () => Navigator.pop(context, true),
//             child: const Text("Go to Products"),
//           ),
//         ],
//       ),
//     );
//
//     if (goToHome == true) {
//       context.go('/'); // Navigate back to product list
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double total = cartItems.fold(
//       0,
//           (sum, item) => sum + (item['price'] as double),
//     );
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Your Cart"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: cartItems.isEmpty
//           ? const Center(
//         child: Text(
//           "Your cart is empty!",
//           style: TextStyle(fontSize: 16, color: Colors.grey),
//         ),
//       )
//           : Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartItems[index];
//                 return Card(
//                   margin: const EdgeInsets.symmetric(
//                       horizontal: 10, vertical: 6),
//                   elevation: 2,
//                   child: ListTile(
//                     leading:
//                     Image.network(item['image'], width: 50, height: 50),
//                     title: Text(item['name']),
//                     subtitle: Text("\$${item['price']}"),
//                     trailing: IconButton(
//                       icon:
//                       const Icon(Icons.delete, color: Colors.redAccent),
//                       onPressed: () => _confirmDelete(context, index),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           const Divider(),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               children: [
//                 Text(
//                   "Total: \$${total.toStringAsFixed(2)}",
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blueAccent,
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//                 ElevatedButton.icon(
//                   onPressed: () async {
//                     if (cartItems.isNotEmpty) {
//                       cartItems.clear();
//                       await saveCartData();
//                       await _showCheckoutPopup(context);
//                       setState(() {});
//                     }
//                   },
//                   icon: const Icon(Icons.shopping_bag),
//                   label: const Text("Checkout"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 40, vertical: 12),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
