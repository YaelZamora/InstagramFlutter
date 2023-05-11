import 'package:flutter/material.dart';
import 'package:instagram/buscar_widget.dart';
import 'package:instagram/grid_widget.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Buscar(
              text: 'Buscar',
            ),
            GridWidget(
              currentIndex: 0,
              size: size,
              crossCount: 3,
              beginIndex: 0,
            ),
          ],
        ),
      ),
    );
  }
}
