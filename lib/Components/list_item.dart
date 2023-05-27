import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.item,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xfffff6dc), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpName,
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text(item.enName,
                    style: TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play((item.sound));
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: Icon(Icons.play_arrow, color: Colors.white, size: 28)),
          )
        ],
      ),
    );
  }
}
