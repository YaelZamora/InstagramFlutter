import 'package:flutter/material.dart';

class ReelTab extends StatefulWidget {
  const ReelTab({super.key});

  @override
  State<ReelTab> createState() => _ReelTabState();
}

class _ReelTabState extends State<ReelTab> {
  Color reactionColor = Colors.white;
  IconData icono = Icons.favorite_border_outlined;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onDoubleTap: () {
          setState(() {
            icono = Icons.favorite;
            reactionColor = Colors.red;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://picsum.photos/id/$index/700',
              ),
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                top: 25,
                left: 10,
                child: Text(
                  'Reels',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 20,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 70,
                child: Column(
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
                        Icons.comment_outlined,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 10,
                bottom: 70,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage('https://picsum.photos/30'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Yael Zamora',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Seguir',
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: const Border(
                      top: BorderSide(color: Colors.white, width: 2),
                      right: BorderSide(color: Colors.white, width: 2),
                      bottom: BorderSide(color: Colors.white, width: 2),
                      left: BorderSide(color: Colors.white, width: 2),
                    ),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/30',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const Positioned(
                bottom: 30,
                left: 10,
                child: Text(
                  'Dolore aliqua veniam nisi in sint.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Positioned(
                bottom: 10,
                left: 30,
                right: 60,
                child: Text(
                  'Commodo minim amet Lorem veniam duis labore consectetur est nisi velit cupidatat Lorem consequat ullamco.',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  Icons.multitrack_audio_sharp,
                  color: Colors.white,
                  size: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
