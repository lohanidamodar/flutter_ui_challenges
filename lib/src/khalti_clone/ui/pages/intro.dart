/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../res/colors.dart';
import '../../res/constants.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentIndex;
  final SwiperController _controller = SwiperController();

  @override
  void initState() { 
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: introBackground[currentIndex],
      body: Column(
        children: <Widget>[
          Expanded(
            child: Swiper(
              controller: _controller,
              itemCount: introItems.length,
              autoplay: true,
              autoplayDelay: 5000,
              index: currentIndex,
              onIndexChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context,index) => _buildPage(context,index),
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.white,
                  color: Colors.white,
                  size: 5.0,
                  activeSize: 12.0
                )
              ),
              loop: true,
              autoplayDisableOnInteraction: true,
              
            ),
          ),
          Row(
            children: <Widget>[
              const SizedBox(width: 20.0),
              Expanded(
                child: RaisedButton(
                  child: Text("login".toUpperCase()),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "login");
                  },
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: RaisedButton(
                  child: Text("create account".toUpperCase()),
                  onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
                ),
              ),
              const SizedBox(width: 20.0),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              const SizedBox(width: 10.0),
              if(!_isFirstPage())
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back, size: 20.0,),
                  onPressed: (){
                    _controller.previous();
                  },
                ),
              if(!_isFirstPage())
              Spacer(),
              IconButton(
                color: Colors.white,
                icon: Icon(_isLastPage() ? Icons.check_circle : Icons.close, size: 20.0,),
                onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
              ),
              if(!_isLastPage())
              Spacer(),
              if(!_isLastPage())
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_forward, size: 20.0,),
                onPressed: (){
                  _controller.next();
                },
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
  bool _isLastPage() => currentIndex == introItems.length - 1;
  bool _isFirstPage() => currentIndex == 0;
  Widget _buildPage(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 60.0),
          Text(introItems[index].title, style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20.0),
          Text(introItems[index].subtitle,textAlign: TextAlign.center,style: TextStyle(
            color: Colors.white,
            fontSize: 18.0
          ),),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(

              child: Image.asset(introItems[index].image, fit: BoxFit.contain,)),
          ),
          const SizedBox(height: 20.0),
          //image
        ],
      ),
    );
  }
}