import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mailnews/views/newsArticleScreen.dart';

class ArticleTileLarge extends StatelessWidget {
  final int num;
  const ArticleTileLarge({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsArticleScreen(num: num,);
        }) );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.875,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.5),
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          spacing: 7.5,
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
                tag: "img$num",
                child: CachedNetworkImage(
                  height: 100,
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://c.ndtvimg.com/2024-07/eet145s8_nepal_625x300_24_July_24.jpg?im=FeatureCrop,algorithm=dnn,width=650,height=400",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Hero(
                    tag: "headline$num",
                    child: Text(
                      "1000 Police Officers Deployed For Football Match Between Israel And Mali",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Text(
                    "All Israeli athletes at the Paris Games, which start officially on Friday, will have round-the-clock personal security provided by elite French police..",
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
