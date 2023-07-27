import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// here we are  wraping our scaffold with ScrollConfiguration to use CustomScrollBehaviour to avoid the glow effect

    return ScrollConfiguration(
      behavior: CustomScrollBehaviour(),
      child: Scaffold(
        appBar: AppBar(
          title:const  Text("Scroll Without GlowEffect"),
        ),
        body: ListView.builder(
          padding:const  EdgeInsets.all(20),
          shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context,index){
            return const  SizedBox(
              height: 50,
              child: Text("Hello World"),
            );

        }),
      ),
    );
  }
}


/// this class is created to avoid the scroll glow effect
class CustomScrollBehaviour extends ScrollBehavior{
  @override
  Widget buildOverscrollIndicator(
      BuildContext context,
      Widget child,
      ScrollableDetails details,
      ){
    return child;
  }
}
