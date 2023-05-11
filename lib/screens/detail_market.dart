import 'package:flutter/material.dart';

class DetailMarket extends StatelessWidget {
  const DetailMarket({
    super.key,
    required this.index,
    required this.beginIndex,
  });

  final int index;
  final int beginIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Producto',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: index,
              child: Container(
                width: size.width * 0.95,
                height: size.width * 0.95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/id/${index + beginIndex}/200',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const Text(
                  'Producto de cuidado personal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            const Text('\$155'),
            Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsetsDirectional.all(10),
              clipBehavior: Clip.hardEdge,
              child: MaterialButton(
                minWidth: size.width,
                height: 50,
                onPressed: () {},
                color: Colors.blue,
                child: const Text(
                  'Ver el sitio',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 10,
              color: Colors.grey,
            ),
            Row(
              children: [
                const Text('Detalles del producto'),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                  ),
                ),
              ],
            ),
            Container(
              width: size.width,
              height: 10,
              color: Colors.grey,
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Productos similares',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Ver todos'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.53,
                    child: GridView.builder(
                      itemCount: 24,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.75,
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemBuilder: (BuildContext context, int index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://picsum.photos/id/${index * 3}/200',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Text('Producto Exclusivo'),
                          const Text('Producto Exclusivo'),
                          const Text('\$150'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
