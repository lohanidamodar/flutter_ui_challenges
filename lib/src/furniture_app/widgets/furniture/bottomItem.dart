import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

import '../../utils/constant.dart';
import '../../widgets/furniture/custom_side_button.dart';
import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          //color: Colors.red,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
          ),
          height: 120.0,
          child: Center(
            child: Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                width: deviceSize.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 110.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: PNetworkImage(
                          lampsImage[2]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      margin: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Aerial Pendant',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Container(
                            width: 200.0,
                            child: Text(
                              'Our Lighting colle tion is sure to add the desired style to',
                              style: TextStyle(
                                color: furnitureCateDisableColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '196',
                                style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'USD',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          right: 10.0,
          child: CustomSideButton(
            icon: Icons.arrow_forward,
            fxn: () {},
          ),
        ),
      ],
    );
  }
}
