import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsArticleScreen extends StatefulWidget {
  final int num;
  const NewsArticleScreen({super.key, required this.num});

  @override
  State<NewsArticleScreen> createState() => _NewsArticleScreenState();
}

class _NewsArticleScreenState extends State<NewsArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Navigator.of(context).pop,
          child: Icon(
            Icons.arrow_back_ios_rounded
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.5),
                topRight: Radius.circular(12.5),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Hero(
              tag: "img${widget.num}",
              child: CachedNetworkImage(
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
                imageUrl:
                "https://c.ndtvimg.com/2024-07/eet145s8_nepal_625x300_24_July_24.jpg?im=FeatureCrop,algorithm=dnn,width=650,height=400",
              ),
            ),
          ),
          Hero(
            tag: "headline${widget.num}",
            child: Text(
              "1000 Police Officers Deployed For Football Match Between Israel And Mali",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
