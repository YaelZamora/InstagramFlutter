import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'Instagram',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            PopupMenuButton(
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  child: ListTile(
                    title: Text('Seguidos'),
                    trailing: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  child: ListTile(
                    title: Text('Favoritos'),
                    trailing: Icon(
                      Icons.star_border_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height * 0.85,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Historias(size: size);
                } else {
                  return Publicaciones(
                    size: size,
                    index: index,
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Historias extends StatelessWidget {
  const Historias({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 70,
      child: ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(
            left: 10,
          ),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.purple,
              ],
            ),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://picsum.photos/id/${index + 40}/80',
            ),
          ),
        ),
      ),
    );
  }
}

class Publicaciones extends StatefulWidget {
  const Publicaciones({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  State<Publicaciones> createState() => _PublicacionesState();
}

class _PublicacionesState extends State<Publicaciones> {
  Color reactionColor = Colors.black;
  IconData icono = Icons.favorite_border_outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height * 0.7,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: widget.size.width,
            child: ListTile(
              leading: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/id/${widget.index + 10}/20',
                ),
              ),
              title: const Text(
                'Yael Zamora',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                icono = Icons.favorite;
                reactionColor = Colors.red;
              });
            },
            child: Container(
              height: widget.size.width,
              width: widget.size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://picsum.photos/id/${widget.index + 17}/400',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: widget.size.width,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      icono = Icons.favorite;
                      reactionColor = Colors.red;
                    });
                  },
                  icon: Icon(
                    icono,
                    color: reactionColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline_rounded,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_rounded,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border_rounded,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: widget.size.width,
            child: const Text(
                'Eiusmod duis anim proident commodo est deserunt esse dolore amet.'),
          ),
          SizedBox(
            height: 30,
            width: widget.size.width,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage('https://picsum.photos/20'),
              ),
              title: const SizedBox(
                height: 30,
                width: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Agrega un comentario...',
                  ),
                  cursorColor: Colors.pink,
                ),
              ),
              trailing: SizedBox(
                width: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                    Icon(
                      Icons.handshake_rounded,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
