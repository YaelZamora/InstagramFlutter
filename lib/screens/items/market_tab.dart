import 'package:flutter/material.dart';
import 'package:instagram/buscar_widget.dart';
import 'package:instagram/grid_widget.dart';

class MarketTab extends StatelessWidget {
  const MarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'MarketPlace',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_sharp,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Buscar(
              text: 'Buscar en MarketPlace',
            ),
            GridWidget(
              size: size,
              crossCount: 2,
              beginIndex: 30,
              currentIndex: 0,
            )
          ],
        ),
      ),
    );
  }
}
