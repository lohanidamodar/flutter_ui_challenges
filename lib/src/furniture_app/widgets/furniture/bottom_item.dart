import 'package:flutter/material.dart';

import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

import '../../utils/constant.dart';
import '../../widgets/furniture/custom_side_button.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({super.key});

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
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    const SizedBox(
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
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Aerial Pendant',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const SizedBox(
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
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5.0),
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
