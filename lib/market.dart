import 'package:flutter/material.dart';
import 'cart.dart';
import 'messaging.dart';

class Market extends StatefulWidget {
  const Market({super.key});
  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  String selectedCategory = 'Seeds';

  final List<Map<String, String>> seeds = [
    {
      'image': 'assets/images/tomato_seeds.png',
      'title': 'Tomato Seeds',
      'subtitle': 'Ghc 25',
    },
    {
      'image': 'assets/images/corn_seeds.png',
      'title': 'Corn Seeds\nGrowers Ltd',
      'subtitle': 'Ghc 25',
    },
    {
      'image': 'assets/images/pepper_seed.png',
      'title': 'Pepper Seeds',
      'subtitle': 'Ghc 25',
    },
    {
      'image': 'assets/images/cucumber_seed.png',
      'title': 'Cucumber Seeds',
      'subtitle': 'Ghc 25',
    },
  ];

  final List<Map<String, String>> fertilizers = [
    {
      'image': 'assets/images/organic_fert.png',
      'title': 'Organic Fert.\nGreenFields',
      'subtitle': 'Ghc 25',
    },
    {
      'image': 'assets/images/urea_fertilizer.png',
      'title': 'Urea Fertilizer\nFarmsupply',
      'subtitle': 'Ghc 24',
    },
    {
      'image': 'assets/images/npk_fertilizer.png',
      'title': 'NPK Fertilizer\nFarmsupply',
      'subtitle': 'Ghc 50',
    },
    {
      'image': 'assets/images/ammonia_fertilizer.png',
      'title': 'Ammonia Fertilizer\nFarmsupply',
      'subtitle': 'Ghc 20',
    },
  ];

  final List<Map<String, String>> cart = [];

  void addToCart(Map<String, String> product) {
    setState(() {
      cart.add(product);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product['title']} added to cart!'),
        backgroundColor: const Color(0xFF5B7B3F),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void goToCartPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CartPage(
          cart: cart,
          onBuyNow: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Proceeding to payment...'),
                backgroundColor: Color(0xFF5B7B3F),
              ),
            );
            setState(() {
              cart.clear();
            });
            Navigator.of(context).pop();
          },
          onClearCart: () {
            setState(() {
              cart.clear();
            });
            Navigator.of(context).pop();
            goToCartPage();
          },
          onRemoveItem: (index) {
            setState(() {
              cart.removeAt(index);
            });
            Navigator.of(context).pop();
            goToCartPage();
          },
        ),
      ),
    );
  }

  void goToChatPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AgronomistChatPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products =
        selectedCategory == 'Seeds' ? seeds : fertilizers;

    return Scaffold(
      backgroundColor: const Color(0xFF5B7B3F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5B7B3F),
        elevation: 0,
        title: const Text(
          "Marketplace",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            tooltip: 'View Cart',
            onPressed: goToCartPage,
          ),
          IconButton(
            icon: const Icon(Icons.message, color: Colors.white),
            tooltip: 'Chat with Agronomist',
            onPressed: goToChatPage,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Removed duplicate "Marketplace" text
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedCategory == 'Seeds'
                            ? Colors.white
                            : const Color(0xFF5B7B3F),
                        foregroundColor: selectedCategory == 'Seeds'
                            ? const Color(0xFF5B7B3F)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedCategory = 'Seeds';
                        });
                      },
                      child: const Text("Seeds"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedCategory == 'Fertilizer'
                            ? Colors.white
                            : const Color(0xFF5B7B3F),
                        foregroundColor: selectedCategory == 'Fertilizer'
                            ? const Color(0xFF5B7B3F)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedCategory = 'Fertilizer';
                        });
                      },
                      child: const Text("Fertilizer"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              product['image']!,
                              width: 300,
                              height: 300,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            product['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF5B7B3F),
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            product['subtitle']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5B7B3F),
                                foregroundColor: Colors.white,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                              ),
                              onPressed: () => addToCart(product),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
