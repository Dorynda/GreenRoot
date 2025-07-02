import 'package:flutter/material.dart';

// Dedicated Cart Page
class CartPage extends StatelessWidget {
  final List<Map<String, String>> cart;
  final VoidCallback onBuyNow;
  final VoidCallback onClearCart;
  final void Function(int) onRemoveItem;

  const CartPage({
    super.key,
    required this.cart,
    required this.onBuyNow,
    required this.onClearCart,
    required this.onRemoveItem,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7E9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5B7B3F),
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          if (cart.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_forever, color: Colors.white),
              onPressed: onClearCart,
              tooltip: "Clear Cart",
            ),
        ],
      ),
      body: cart.isEmpty
          ? const Center(
              child: Text(
                "Your cart is empty.",
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(18),
              itemCount: cart.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                final item = cart[index];
                return ListTile(
                  leading: Image.asset(
                    item['image']!,
                    width: 48,
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    item['title']!,
                    style: const TextStyle(
                      color: Color(0xFF5B7B3F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(item['subtitle']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle, color: Colors.red),
                    onPressed: () => onRemoveItem(index),
                  ),
                );
              },
            ),
      bottomNavigationBar: cart.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5B7B3F),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: onBuyNow,
                  child: const Text(
                    "Proceed to Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
