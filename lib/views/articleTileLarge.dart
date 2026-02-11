import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ArticleTileLarge extends StatelessWidget {
  const ArticleTileLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Hero(
            tag: "img",
            child: CachedNetworkImage(
              imageUrl:
                  "https://c.ndtvimg.com/2024-07/3k6542dg_france-protest_625x300_24_July_24.jpeg",
            ),

          ),
          Text("1000 Police Officers Deployed For Football Match Between Israel And Mali"),
          Text("All Israeli athletes at the Paris Games, which start officially on Friday, will have round-the-clock personal security provided by elite French police..")
        ],
      ),
    );
  }
}
