import 'package:flutter/material.dart';
import 'package:instagram/screens/items/items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> currentIndex = const [
    HomeTab(),
    SearchTab(),
    ReelTab(),
    MarketTab(),
    UserTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return PageView(
      children: [
        Scaffold(
          body: currentIndex[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.ondemand_video_outlined,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                label: '',
              ),
            ],
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: const Text(
              'yaelzamoramoreno',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.show_chart,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.create,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  width: size.width,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: size.width * 0.7,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Buscar',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Filtrar',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.blue.shade100,
                          elevation: 0,
                          height: 40,
                          minWidth: 100,
                          child: const Text(
                            'Principal',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.grey.shade300,
                          elevation: 0,
                          height: 40,
                          minWidth: 100,
                          child: const Text(
                            'General',
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.grey.shade300,
                          elevation: 0,
                          height: 40,
                          minWidth: 100,
                          child: const Text(
                            'Solicitudes',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) => ListTile(
                      minVerticalPadding: 25,
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/id/${index + 20}/80',
                        ),
                      ),
                      title: Text(
                        nombres.elementAt(index),
                      ),
                      subtitle: const Text(
                        'Occaecat id dolor id culpa dolor nostrud dolore proident anim reprehenderit do in excepteur officia.',
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<String> nombres = [
  'Yun',
  'Sofia',
  'Ale',
  'Vane',
  'Leo',
  'Gerry',
  'Karina',
  'Bere',
  'Sebas',
  'Gus',
  'Chess Family',
  'Pau',
  'Armando',
  'Roy',
  'Darío',
  'Cris',
  'Guille',
  'Miguel',
  'Adan',
  'Mau',
  'Dan',
];
