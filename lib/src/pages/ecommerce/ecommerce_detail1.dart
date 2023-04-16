import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class EcommerceDetailOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/ecommerce_detail1.dart";

  const EcommerceDetailOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Woman Apperals",
          style: TextStyle(color: Colors.grey.shade800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Container(
                height: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[1]), fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "\$500",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Womens Casual Purse",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              _buildImagesGrid()
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _buildAddToCartButton(),
          ],
        )
      ],
    );
  }

  Widget _buildImagesGrid() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.all(10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PNetworkImage(
            images[0],
            height: 80,
          ),
          const SizedBox(
            width: 20.0,
          ),
          PNetworkImage(
            images[1],
            height: 80,
          ),
          const SizedBox(
            width: 20.0,
          ),
          PNetworkImage(
            images[3],
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text("Add to Cart"),
            ),
          ),
        ),
      ],
    );
  }
}
