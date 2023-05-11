import 'package:flutter/material.dart';

class UserTab extends StatelessWidget {
  const UserTab({super.key});

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
              'yaelzamoramoreno',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage('https://picsum.photos/200'),
                            ),
                            title: Text(
                              'yaelzamoramoreno',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                            title: Text('Agregar Cuenta'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_outlined,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Encabezado(size: size),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'YaelZamora\nBlog Personal\nStudent - Mobile Developer\nUNAM\nDart, Java, Kotlin, Swift',
              ),
            ),
            Panel(size: size),
            EditPerfil(size: size),
            const SizedBox(height: 20),
            HistoriasDestacadas(size: size),
            PostsUser(size: size),
          ],
        ),
      ),
    );
  }
}

class Encabezado extends StatelessWidget {
  const Encabezado({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
            backgroundColor: Colors.transparent,
            radius: 40,
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: MaterialButton(
              onPressed: () {},
              height: 80,
              minWidth: 80,
              child: const Text(
                '32\nPublicaciones',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: MaterialButton(
              onPressed: () {},
              height: 78,
              minWidth: 70,
              child: const Text(
                '132\nSeguidores',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: MaterialButton(
              onPressed: () {},
              height: 78,
              minWidth: 70,
              child: const Text(
                '102\nSeguidos',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: size.width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Panel para profesionales',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Text(
              '679 cuentas alcanzadas en los últimos 30 días',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ));
  }
}

class EditPerfil extends StatelessWidget {
  const EditPerfil({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      child: MaterialButton(
        onPressed: () {},
        minWidth: size.width,
        height: 30,
        child: const Text(
          'Editar perfil',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class HistoriasDestacadas extends StatelessWidget {
  const HistoriasDestacadas({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => Column(
          children: [
            HistoriaDestacada(
              index: index,
            ),
            const Text('Historia'),
          ],
        ),
      ),
    );
  }
}

class HistoriaDestacada extends StatelessWidget {
  const HistoriaDestacada({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        backgroundImage: NetworkImage('https://picsum.photos/id/$index/80'),
      ),
    );
  }
}

class PostsUser extends StatelessWidget {
  const PostsUser({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.9,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://picsum.photos/id/${index + 30}/200',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
