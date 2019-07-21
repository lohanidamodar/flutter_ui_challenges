import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TravelNepalPage extends StatelessWidget {
  static final String path = "lib/src/pages/travel/travel_nepal.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/travel/mount_everest.jpg'), fit: BoxFit.cover)
            ),
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.black.withOpacity(0.2),
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 100.0),
              Text("Discover Nepal".toUpperCase(), textAlign: TextAlign.center, style: TextStyle(
                fontSize: 24.0,
                color: Colors.white
              )),
              Text("Heaven is myth. Nepal is real.", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white
              )),
              SizedBox(height: 50.0,),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Top Rated".toUpperCase()),
                        Text("Sort by price"),
                        SizedBox(height: 20.0,),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 200,
                          child: Swiper.children(
                            autoplay: true,
                            loop: true,
                            pagination: SwiperPagination(
                              margin: EdgeInsets.only(right: 25.0,),
                              builder: DotSwiperPaginationBuilder(
                                color: Colors.grey
                              ),
                            ),
                            control: SwiperControl(
                              iconNext: Icons.arrow_forward_ios,
                              iconPrevious: null,
                            ),
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset('assets/travel/fewalake.jpg', fit: BoxFit.cover))
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset('assets/travel/kathmandu1.jpg', fit: BoxFit.cover))
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset('assets/travel/fishtail.jpg', fit: BoxFit.cover))
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset('assets/travel/mount_everest.jpg', fit: BoxFit.cover))
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50.0, bottom: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset('assets/travel/kathmandu2.jpg', fit: BoxFit.cover))
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Frequently Searched".toUpperCase()),
                      SizedBox(height: 10.0,),
                      Wrap(
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        spacing: 5.0,
                        children: <Widget>[
                          Chip(backgroundColor: Colors.red,label: Text("Pokhara".toUpperCase(), style: TextStyle(color: Colors.white)),),
                          Chip(label: Text("Everest base camp".toUpperCase()),),
                          Chip(label: Text("Lumbini".toUpperCase()),),
                          Chip(label: Text("Annapurna".toUpperCase()),),
                          Chip(label: Text("Kathmandu".toUpperCase()),),
                          Chip(label: Text("10+".toUpperCase()),),
                        ],
                      )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}