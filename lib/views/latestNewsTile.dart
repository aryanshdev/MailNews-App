import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mailnews/themeData.dart';

class LatestNewsTile extends StatelessWidget {
  final int num;
  const LatestNewsTile({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.875,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:  newsArticleBGColors[0],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: Hero(
              tag: "img$num",
              child: CachedNetworkImage(
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl:
                    "https://c.ndtvimg.com/2024-07/eet145s8_nepal_625x300_24_July_24.jpg?im=FeatureCrop,algorithm=dnn,width=650,height=400",
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Column(
            spacing: 8,
            children: [
              Text("Testing News Article Shouldn't BE SMALL", textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: primaryColorDark, fontWeight: FontWeight.w600)),
              Text("Testing News Article Shouldn't BE SMALL But Body toh never should be half", textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: primaryColorDark))
            ],
          ))
        ],
      ),
    );
  }
}
