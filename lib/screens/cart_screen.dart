import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/cart_service.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: cart.items.isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final item = cart.items[index];
                      return ListTile(
                        leading: item.product.imageUrl.isNotEmpty
                            ? Image.network(
                                item.product.imageUrl,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                            : const Icon(Icons.image),
                        title: Text(item.product.name),
                        subtitle: Text('₹${item.product.price} x ${item.quantity}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => cart.decreaseQuantity(item.product.id),
                            ),
                            Text('${item.quantity}'),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => cart.increaseQuantity(item.product.id),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                        offset: const Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹${cart.totalPrice.toStringAsFixed(0)}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2874F0),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Place order
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Order placed successfully! (Demo)')),
                            );
                            cart.clearCart();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2874F0),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Place Order'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
