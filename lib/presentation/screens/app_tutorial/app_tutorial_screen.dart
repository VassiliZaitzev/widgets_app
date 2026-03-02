import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String url;
  SlideInfo(this.title, this.caption, this.url);
}

final slides = <SlideInfo> [
  SlideInfo("Busca la comida", "Proident sunt laborum aliqua labore consequat ex irure sint adipisicing ea consectetur. Do esse minim eu enim dolore reprehenderit labore laboris labore consequat amet elit eu. Irure officia aliquip dolore dolore anim elit cillum sunt do duis. Do labore culpa aliqua occaecat. Amet esse consequat ipsum fugiat aliquip labore laboris excepteur laboris voluptate dolore aliqua. Sit ad consectetur quis consectetur magna voluptate eiusmod sit laborum magna." ,"assets/images/1.png"),
  SlideInfo("Busca la comida", "Tempor reprehenderit ullamco ullamco laboris laborum ad deserunt enim culpa sint. Minim cupidatat ea culpa qui Lorem eiusmod voluptate cillum aliqua dolor do laboris. Fugiat excepteur eiusmod amet sit dolor ut quis deserunt voluptate quis aliquip est. Velit eiusmod proident velit nulla in exercitation cillum excepteur ea laboris ullamco labore magna. Commodo nostrud exercitation dolor ut eiusmod aute duis ullamco culpa.", "assets/images/2.png"),
  SlideInfo("Busca la comida", "Mollit ad do magna proident irure est. Est magna irure esse laborum exercitation non. Cillum ea reprehenderit sint reprehenderit ad qui ex id.", "assets/images/3.png")
];
class AppTutorialScreen extends StatefulWidget {
  static const name = "app_tutorial_screen";

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageviewController = PageController();
  bool endReached = false;
  @override
  void initState() {
    super.initState();
    pageviewController.addListener((){
      final page = pageviewController.page ?? 0;

      if(!endReached && page >= (slides.length - 1.5)){
        setState(() {
          endReached = true;
        });
      }
      print(page);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: BouncingScrollPhysics(),
            children: slides.map(
              (slideMap) => _Slide(
                slideMap.title, 
                slideMap.caption, 
                slideMap.url
              )
            ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: (){
                context.pop();
              }, 
              child: Text("Salir")
            )
          ),


          endReached ? 
          Positioned(
            bottom: 30,
            right: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(seconds: 1),
              child: FilledButton(                            
                onPressed: () => context.pop(), 
                child: Text("Comenzar")
              ),
            )
          )
          : SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String url; 
  const _Slide(this.title, this.caption, this.url);


  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(url)),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,)
          ],
        ),
      ),
    );
  }
}