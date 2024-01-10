import 'package:flutter/material.dart';
import 'package:flutter_animation/components/product_card.dart';
import 'package:flutter_animation/constants/constants.dart';
import 'package:flutter_animation/models/product.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Lessons'),
      ),
      body: Container(
        color: const Color(0xFFEAEAEA),
        child: Column(
          children: [
            HomeWeader(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultPadding * 1.5),
                      bottomRight: Radius.circular(defaultPadding * 1.5),
                    )),
                child: GridView.builder(
                  itemCount: demo_prodacts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      mainAxisExtent: defaultPadding,
                      crossAxisSpacing: defaultPadding),
                  itemBuilder: (context, index) => ProductCard(
                    product: demo_prodacts[index],
                    press: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: cardBarWeight,
            )
          ],
        ),
      ),
    );
  }
}
