# Ecommerce Kit [![pub package](https://img.shields.io/pub/v/ecommerce_kit.svg)](https://pub.dev/packages/ecommerce_kit)

My Flutter package is a collection of pre-built eCommerce components, including product listings, shopping carts, checkout processes, product details, payment gateway integrations, order history, and wishlists. With this package, developers can save time and effort when building eCommerce applications using Flutter.

## Usage

To use this package, add `ecommerce_kit` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```dart
dependencies:
  ecommerce_kit: ^0.0.1
```

```dart
// Import package
import 'package:ecommerce_kit/ecommerce_kit.dart';
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:ecommerce_kit/ecommerce_kit.dart';

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

```

## Elements

### Slider

```dart
EcommerceElement.sliderAssets(enlargeCenterPage: true),
```

### Slide Show

```dart
EcommerceElement.slideShow(), //etc...
```

| Elemets                     | Description                      | Parameters                                                                                                                                                                                                                                                                                                                             |
| --------------------------- | -------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| .splashScreenAsset()        | Splash Screen                    | appImage, appWidth, appName, appNameColor, appNameFontFamily, appNameFontSize, appversoin, appVersionCOlor, appVersionFontFamily, appVersionFontSize, credits, creditsColor, creditsFontFamily, creditsFontSize                                                                                                                        |
| .splashScreenNetwork()      | Splash Screen                    | appImage, appWidth, appName, appNameColor, appNameFontFamily, appNameFontSize, appversion, appVersionColor, appVersionFontFamily, appVersionFontSize, credits, creditsColor, creditsFontFamily, creditsFontSize                                                                                                                        |
| .sliderAssets()             | Slider                           | slidersList, aspectRatio, height, enlargeCenterPage, autoPlay, onTap, imageFit                                                                                                                                                                                                                                                         |
| .slider()                   | Slider                           | slidersList, aspectRatio, height, enlargeCenterPage, autoPlay, onTab                                                                                                                                                                                                                                                                   |
| .productCard()              | Product Card                     | image, title, titleColor, titleFontFamily, titleFontSize, price, priceColor, priceFontFamily, priceFontSize, description, descriptionColor, descriptionFontFamily, descriptionFontSize, backgroundColor, width, imageBoxFit, onTap                                                                                                     |
| .productCardAssets()        | Product Card with Asset Image    | image, title, titleColor, titleFontFamily, titleFontSize, titleFontWeight, price, priceColor, priceFontFamily, priceFontSize, priceFontWeight, description, descriptionColor, descriptionFontFamily, descriptionFontSize, backgroundColor, width, imageBoxFit, onTap                                                                   |
| .productCardAsset()         | Product Card with Asset Image    | image, title, titleColor, titleFontFamily, titleFontSize, titleFontWeight, price, priceColor, priceFontFamily, priceFontSize, priceFontWeight, description, descriptionFontFamily, descriptionFontSize, descriptionColor, backgroundColor, width, imageBoxFit, onTap                                                                   |
| .categoryCardAsset()        | Category Card with Asset Image   | image, title, titleColor, titleFontFamily, titleFontSize, desctiption, descriptionColor, descriptionFontFamily, descriptionFontSize, backgroundColor, width, height, imageBoxFit, onTap                                                                                                                                                |
| .categoryCard()             | Category Card with Network Image | image, title, titleColor, titleFontFamily, titleFontSize, desctiption, descriptionColor, descriptionFontFamily, descriptionFontSize, backgroundColor, width, height, imageBoxFit, onTap                                                                                                                                                |
| .circularColorBox()         | Circular Color Box               | color, size, onTap, selectedColor                                                                                                                                                                                                                                                                                                      |
| .sizeSelector()             | Size Selector for products       | sizes[], onTap, backgroundColor, selected, height, width                                                                                                                                                                                                                                                                               |
| .cartItem()                 | For Products Item in the Cart    | image, title, titleColor, titleFontFamily, titleFontSize, subtitle, subtitleColor, subtitleFontFamily, subtitleFontSize, price, priceColor, priceFontFamily, priceFontSize, onTap, height, width, imageBoxFit, prductQuantity, backgroundColor, increaseQuantity, decreaseQuantity, removeItem, showRemoveButton, productQuantityColor |
| .profileImage()             | Profile Image                    | image, onTap, height, width, imageBoxFit                                                                                                                                                                                                                                                                                               |
| .profileImageCircular()     | Profile Image Circular           | image, onTap, height, width, imageBoxFit                                                                                                                                                                                                                                                                                               |
| increaseDecreaseQuantity    | Increase Decrease Quantity       | productQuantity, productQuantityColor, bacgroundColor, increaseQuantity, decreaseQuantity                                                                                                                                                                                                                                              |
| .inputField()               | Input Field                      | title, titleColor, titleFontFamily, hint, controller, keyboardType, isPassword, fillColor, onChanged, onTap, onSubmitted, fontFamily, fontSize, fontCOlor, borderCOlor, maxLines, obscureText, validator                                                                                                                               |
| .button                     | Button                           | onPress, backgroundColor, textColor, title, fontFamily                                                                                                                                                                                                                                                                                 |
| .loginScreen()              | Login Screen                     | logo, logoHeight, logoWidth, logoBoxFit, logoBackgroundColor, emailController, passwordController, onTapLogin, onTapSignup                                                                                                                                                                                                             |
| .signUpScreen()             | Sign Up Screen                   | logo, logoHeight, logoWidth, logoBoxFit, logoBackgroundColor, nameController, emailController, passwordController,confirmPasswordController, onTapLogin, onTapSignup                                                                                                                                                                   |
| .removeProductAlertBoxOne() | Remove Product Alert Box         | onTapYes, onTapNo, productName                                                                                                                                                                                                                                                                                                         |
| .removeProductAlertBoxTwo() | Remove Product Alert Box         | onTapYes, onTapNo, productName                                                                                                                                                                                                                                                                                                         |
| .deleteAccount()            | Delete Account                   | onTapYes, onTapNo                                                                                                                                                                                                                                                                                                                      |
| .menuItem()                 | Menu Item                        | onTap, leading, subtitle, traling, title, backgroundColor                                                                                                                                                                                                                                                                              |
| .filterCard()               | Filter Card                      | onTap, title, deleteIcon, onDelete, deleteIconColor, backgroundColor, labelStyle, avatar, elevation                                                                                                                                                                                                                                    |
| .addToCartButton()          | Add To Cart Button               | onTap, title, backgroundColor, textColor                                                                                                                                                                                                                                                                                               |
| .heading()                  | Heading                          | title, titleColor, titleFontFamily, titleFontSize, titleFontWeight, subtitle, subtitleColor, subtitleFontFamily, subtitleFontSize, subtitleFontWeight, backgroundColor, onTap                                                                                                                                                          |
| .featuredButtonAsset()      | Featured Button with Asset Image | image, title, titleColor, titleFontFamily, subtitle, subtitleColor, subtitleFontFamily, backgroundColor, onTap, imageBoxFit, featuredButtonWidth, imageWidth                                                                                                                                                                           |
| .slideShow()                | Slide Show                       | images, height, aspectRatio, autoPlay, imageBoxFit, imageWidth, imageHeight, onTap                                                                                                                                                                                                                                                     |
| .rating()                   | Rating                           | onRatingUpdate, normalCOlor, selectionColor, count, size, stepInt, isSelectable                                                                                                                                                                                                                                                        |

## Github Repository

[Ecommerce Kit](https://github.com/shubham0809200/ecommerce_kit)

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

## Also Checkout

| Package                                                              | Description                 |
| -------------------------------------------------------------------- | --------------------------- |
| [Form Maker](https://pub.dev/packages/form_maker)                    | Create forms with ease      |
| [Dad Jokes](https://pub.dev/packages/dad_joke)                       | Get random dad jokes        |
| [Timestamp to String](https://pub.dev/packages/timestamp_to_string)  | Convert timestamp to string |
| [Drop Down Menu Items](https://pub.dev/packages/drop_down_list_menu) | Drop Down Menu Items        |
| [Single Text Field](https://pub.dev/packages/single_text_field)      | Single Text Field           |

## Special Thanks

[Flutter](https://flutter.dev/)
[Velocity X](https://velocityx.dev/)
