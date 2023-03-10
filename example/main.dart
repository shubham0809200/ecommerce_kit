import 'package:ecommerce_kit/src/ecommerce_kit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EcommerceTest extends StatefulWidget {
  const EcommerceTest({super.key});

  @override
  State<EcommerceTest> createState() => _EcommerceTestState();
}

class _EcommerceTestState extends State<EcommerceTest> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce Test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.heightBox,
            EcommerceElement.sliderAssets(enlargeCenterPage: true),
            20.heightBox,
            EcommerceElement.slideShow(),
            10.heightBox,
            EcommerceElement.menuItem(),
            20.heightBox,
            EcommerceElement.increaseDecreaseQuantity(
              productQuantity: quantity,
              increaseQuantity: () {
                setState(() {
                  quantity++;
                });
              },
              decreaseQuantity: () {
                setState(() {
                  quantity--;
                });
              },
            ),
            EcommerceElement.heading(
              title: 'Featured Products',
              backgroundColor: Colors.grey[200],
            ),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(10),
              // margin: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  3,
                  (index) => EcommerceElement.productCardAsset(
                    onTap: () {},
                  ),
                )),
              ),
            ),
            20.heightBox,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  2,
                  (index) => Column(
                    children: [
                      EcommerceElement.featuredButtonAsset(
                        imageBoxFit: BoxFit.cover,
                        onTap: () => print('Featured Button $index tapped'),
                      ),
                      10.heightBox,
                      EcommerceElement.featuredButtonAsset(
                        imageBoxFit: BoxFit.cover,
                        onTap: () => print('Featured Button $index tapped'),
                      ),
                    ],
                  ),
                ).toList(),
              ),
            ),
            EcommerceElement.rating(),
            20.heightBox,
            EcommerceElement.filterCard(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  EcommerceElement.productCard(),
                  EcommerceElement.productCard(),
                  EcommerceElement.productCard(),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 200,
                    ),
                    itemBuilder: (context, index) {
                      return EcommerceElement.categoryCardAsset(
                        onTap: () => print('Category Card $index tapped'),
                      ).box.make();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
