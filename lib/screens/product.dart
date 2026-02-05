import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int quantity = 1;
  bool isHot = true;
  String size = 'Tall';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNav(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _header(),
              const SizedBox(height: 20),
              _productImage(),
              const SizedBox(height: 24),
              _productInfo(),
              const SizedBox(height: 20),
              _priceAndCounter(),
              const SizedBox(height: 20),
              _hotColdToggle(),
              const SizedBox(height: 16),
              _sizeSelector(),
              const SizedBox(height: 24),
              _actionButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        const Spacer(),
        Column(
          children: const [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(Icons.local_cafe),
            ),
            SizedBox(height: 4),
            Text(
              'Siren Order',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Spacer(flex: 2),
      ],
    );
  }

  Widget _productImage() {
    return Container(
      height: 220,
      width: 220,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF1E3932),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/latte.png',
        height: 160,
      ),
    );
  }

  Widget _productInfo() {
    return Column(
      children: const [
        Text(
          'Cinnamon Dolce Latte',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'We add freshly steamed milk and cinnamon dolce-flavored syrup to our classic espresso, topped with sweetened whipped cream and a cinnamon...',
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Text(
          'See more',
          style: TextStyle(
            color: Color(0xFF00754A),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _priceAndCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '\$19.65',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00754A),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) setState(() => quantity--);
                },
              ),
              Text(quantity.toString()),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => setState(() => quantity++),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _hotColdToggle() {
    return _pillContainer(
      Row(
        children: [
          _pillButton('Hot', isHot, () => setState(() => isHot = true)),
          _pillButton('Cold', !isHot, () => setState(() => isHot = false)),
        ],
      ),
    );
  }

  // ================= SIZE =================
  Widget _sizeSelector() {
    final sizes = ['Short', 'Tall', 'Grande', 'Venti'];
    return _pillContainer(
      Row(
        children: sizes.map((s) {
          final active = size == s;
          return _pillButton(
            s,
            active,
            () => setState(() => size = s),
          );
        }).toList(),
      ),
    );
  }

  // ================= ACTIONS =================
  Widget _actionButtons() {
    return _pillContainer(
      Row(
        children: [
          Expanded(
            child: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
              label: const Text('Add to cart'),
            ),
          ),
          Expanded(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00754A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.check),
              label: const Text('Order now'),
            ),
          ),
        ],
      ),
    );
  }

  // ================= BOTTOM NAV =================
  Widget _bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF00754A),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
      ],
    );
  }
  
  Widget _pillContainer(Widget child) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: child,
    );
  }

  Widget _pillButton(String text, bool active, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: active ? const Color(0xFFE8E0A6) : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: active ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
