import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EcommerceElement extends StatelessWidget {
  ///
  /// [child] to return a custom widget depending on the requirement of the user
  ///
  final Widget? child;
  const EcommerceElement({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }

  // Splash Screen
  factory EcommerceElement.splashScreenAsset({
    ///
    /// [appImage]
    ///
    /// appImage
    ///
    String? appImage,

    ///
    /// [appWidth] for app logo width
    ///
    /// appWidth
    ///
    double? appWidth,

    ///
    /// [appname] for app name
    ///
    /// appname
    ///
    String? appName,

    ///
    /// [appNameColor] for app name color
    ///
    /// appNameColor
    ///
    Color? appNameColor,

    ///
    /// [appNameFontFamily] for app name font family
    ///
    /// appNameFontFamily
    ///
    String? appNameFontFamily,

    ///
    /// [appNameFontSize] for app name font size
    ///
    /// App name font size
    ///
    double? appNameFontSize,

    ///
    /// [appversion] for app version
    ///
    /// appversion
    ///
    String? appversion,

    ///
    /// [appVersionColor] for app version color
    ///
    /// appVersionColor
    ///
    Color? appVersionColor,

    ///
    /// [appVersionFontFamily] for app version font family
    ///
    /// appVersionFontFamily
    ///
    String? appVersionFontFamily,

    ///
    /// [appVersionFontSize] for app version font size
    ///
    /// appVersionFontSize
    ///
    double? appVersionFontSize,

    ///
    /// [credits] for app credits
    ///
    /// credits
    ///
    String? credits,

    ///
    /// [creditsColor] for app credits color
    ///
    /// creditsColor
    ///
    Color? creditsColor,

    ///
    /// [creditsFontFamily] for app credits font family
    ///
    /// creditsFontFamily
    ///
    String? creditsFontFamily,

    ///
    /// [creditsFontSize] for app credits font size
    ///
    /// creditsFontSize
    ///
    double? creditsFontSize,
  }) {
    return EcommerceElement(
      child: Center(
        child: Column(
          children: [
            20.heightBox,
            Image.asset(
              appImage ?? 'assets/images/product.jpg',
              width: appWidth ?? 100,
            )
                .box
                .white
                .size(77, 77)
                .padding(const EdgeInsets.all(8))
                .rounded
                .make(),
            10.heightBox,
            (appName ?? '')
                .text
                .fontFamily(appNameFontFamily ?? 'sans-serif')
                .size(appNameFontSize ?? 22)
                .color(appNameColor)
                .make(),
            5.heightBox,
            (appversion ?? '')
                .text
                .fontFamily(appVersionFontFamily ?? 'sans-serif')
                .size(appVersionFontSize ?? 14)
                .color(appVersionColor)
                .make(),
            const Spacer(),
            (credits ?? '')
                .text
                .fontFamily(creditsFontFamily ?? 'sans-serif')
                .size(creditsFontSize ?? 14)
                .color(creditsColor)
                .make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }

  // Splash Screen Network Image
  factory EcommerceElement.splashScreenNetwork({
    ///
    /// [appImage]
    ///
    /// appImage
    ///
    String? appImage,

    ///
    /// [appWidth] for app logo width
    ///
    /// appWidth
    ///
    double? appWidth,

    ///
    /// [appname] for app name
    ///
    /// appname
    ///
    String? appName,

    ///
    /// [appNameColor] for app name color
    ///
    /// appNameColor
    ///
    Color? appNameColor,

    ///
    /// [appNameFontFamily] for app name font family
    ///
    /// appNameFontFamily
    ///
    String? appNameFontFamily,

    ///
    /// [appNameFontSize] for app name font size
    ///
    /// App name font size
    ///
    double? appNameFontSize,

    ///
    /// [appversion] for app version
    ///
    /// appversion
    ///
    String? appversion,

    ///
    /// [appVersionColor] for app version color
    ///
    /// appVersionColor
    ///
    Color? appVersionColor,

    ///
    /// [appVersionFontFamily] for app version font family
    ///
    /// appVersionFontFamily
    ///
    String? appVersionFontFamily,

    ///
    /// [appVersionFontSize] for app version font size
    ///
    /// appVersionFontSize
    ///
    double? appVersionFontSize,

    ///
    /// [credits] for app credits
    ///
    /// credits
    ///
    String? credits,

    ///
    /// [creditsColor] for app credits color
    ///
    /// creditsColor
    ///
    Color? creditsColor,

    ///
    /// [creditsFontFamily] for app credits font family
    ///
    /// creditsFontFamily
    ///
    String? creditsFontFamily,

    ///
    /// [creditsFontSize] for app credits font size
    ///
    /// creditsFontSize
    ///
    double? creditsFontSize,
  }) {
    return EcommerceElement(
      child: Center(
        child: Column(
          children: [
            20.heightBox,
            Image.network(
              appImage ??
                  'https://images.pexels.com/photos/380954/pexels-photo-380954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              width: appWidth ?? 100,
            )
                .box
                .white
                .size(77, 77)
                .padding(const EdgeInsets.all(8))
                .rounded
                .make(),
            10.heightBox,
            (appName ?? '')
                .text
                .fontFamily(appNameFontFamily ?? 'sans-serif')
                .size(appNameFontSize ?? 22)
                .color(appNameColor)
                .make(),
            5.heightBox,
            (appversion ?? '')
                .text
                .fontFamily(appVersionFontFamily ?? 'sans-serif')
                .size(appVersionFontSize ?? 14)
                .color(appVersionColor)
                .make(),
            const Spacer(),
            (credits ?? '')
                .text
                .fontFamily(creditsFontFamily ?? 'sans-serif')
                .size(creditsFontSize ?? 14)
                .color(creditsColor)
                .make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }

  // Slider with assets images
  factory EcommerceElement.sliderAssets({
    ///
    /// [slidersList] is required
    ///
    /// slidersList
    ///
    List<String>? slidersList,

    ///
    /// [aspectRatio] for slider aspect ratio
    ///
    /// aspectRatio
    ///
    double? aspectRatio,

    ///
    /// [height] for slider height
    ///
    /// height
    ///
    double? height,

    ///
    /// [enlargeCenterPage] for slider enlarge center page
    ///
    /// enlargeCenterPage
    ///
    bool? enlargeCenterPage,

    ///
    /// [autoPlay] for slider auto play
    ///
    /// autoPlay
    ///
    bool? autoPlay,

    ///
    /// [onTap] for slider on tap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [imageFit] for slider image fit
    ///
    /// imageFit
    ///
    BoxFit? imageFit,
  }) {
    return EcommerceElement(
      child: VxSwiper.builder(
        aspectRatio: aspectRatio ?? 16 / 9,
        autoPlay: autoPlay ?? true,
        height: height ?? 220,
        enlargeCenterPage: enlargeCenterPage ?? false,
        itemCount: slidersList?.length ?? 4,
        itemBuilder: (context, index) {
          return Image.asset(
            slidersList?[index] ?? 'assets/images/product.jpg',
            fit: imageFit ?? BoxFit.cover,
          )
              .box
              .roundedSM
              .clip(Clip.antiAlias)
              .margin(const EdgeInsets.symmetric(horizontal: 8))
              .make()
              .onInkTap(onTap ?? () {});
        },
      ),
    );
  }

  // Slider with network images
  factory EcommerceElement.slider({
    ///
    /// [slidersList] for slider images
    ///
    /// slidersList
    ///
    List<String>? slidersList,

    ///
    /// [aspectRatio] for slider aspect ratio
    ///
    /// aspectRatio
    ///
    double? aspectRatio,

    ///
    /// [height] for slider height
    ///
    /// height
    ///
    double? height,

    ///
    /// [enlargeCenterPage] for slider enlarge center page
    ///
    /// enlargeCenterPage
    ///
    bool? enlargeCenterPage,

    ///
    /// [autoPlay] for slider auto play
    ///
    /// autoPlay
    ///
    bool? autoPlay,

    ///
    /// [onTap] for slider on tap
    ///
    /// onTap
    ///
    Function()? onTap,
  }) {
    // create a slider
    return EcommerceElement(
      child: VxSwiper.builder(
        aspectRatio: aspectRatio ?? 16 / 9,
        autoPlay: autoPlay ?? true,
        height: height ?? 200,
        enlargeCenterPage: enlargeCenterPage ?? true,
        itemCount: slidersList?.length ?? 2,
        itemBuilder: (context, index) {
          return Image.network(
            slidersList?[index] ??
                'https://images.pexels.com/photos/380954/pexels-photo-380954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.fill,
          )
              .box
              .rounded
              .clip(Clip.antiAlias)
              .margin(const EdgeInsets.symmetric(horizontal: 8))
              .make()
              .onInkTap(onTap ?? () {});
        },
      ),
    );
  }

  // Product card
  factory EcommerceElement.productCard({
    ///
    /// [image] is required
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for product title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for product title color
    ///
    /// title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for product title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontSize] for product title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [price] for product price
    ///
    /// price
    ///
    String? price,

    ///
    /// [priceColor] for product price color
    ///
    /// price color
    ///
    Color? priceColor,

    ///
    /// [priceFontFamily] for product price font family
    ///
    /// price font family
    ///
    String? priceFontFamily,

    ///
    /// [priceFontSize] for product price font size
    ///
    /// price font size
    ///
    double? priceFontSize,

    ///
    /// [description] for product description
    ///
    /// description
    ///
    String? description,

    ///
    /// [descriptionColor] for product description color
    ///
    /// description color
    ///
    Color? descriptionColor,

    ///
    /// [descriptionFontFamily] for product description font family
    ///
    /// description font family
    ///
    String? descriptionFontFamily,

    ///
    /// [descriptionFontSize] for product description font size
    ///
    /// description font size
    ///
    double? descriptionFontSize,

    ///
    /// [backgroundColor] for product card background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [width] for product card width
    ///
    /// width
    ///
    double? width,

    ///
    /// [boxFit] for product card image box fit
    ///
    /// box fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [onTap] for product card on tap
    ///
    /// on tap
    ///
    Function()? onTap,
  }) {
    return EcommerceElement(
      child: SizedBox(
        width: width ?? 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image ??
                  'https://images.pexels.com/photos/380954/pexels-photo-380954.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              width: (width ?? 150) - 5,
              fit: imageBoxFit ?? BoxFit.cover,
            ),
            10.heightBox,
            (title ?? 'Product Title')
                .text
                .color(titleColor ?? Colors.black)
                .fontFamily(titleFontFamily ?? 'sans-serif')
                .size(titleFontSize ?? 14)
                .make(),
            10.heightBox,
            (price ?? 'Rs. 2000')
                .text
                .color(priceColor ?? Colors.black)
                .fontFamily(priceFontFamily ?? 'sans-serif')
                .size(priceFontSize ?? 16)
                .make(),
            10.heightBox,
            (description ??
                    'This is a small description of the product. hope you understand')
                .text
                .color(descriptionColor ?? Colors.grey.shade500)
                .fontFamily(descriptionFontFamily ?? 'sans-serif')
                .size(descriptionFontSize ?? 12)
                .overflow(TextOverflow.ellipsis)
                .maxLines(2)
                .make(),
          ],
        )
            .box
            .color(backgroundColor ?? Colors.white)
            .margin(const EdgeInsets.symmetric(
              horizontal: 4,
            ))
            .roundedSM
            .padding(const EdgeInsets.all(8))
            .make()
            .onInkTap(onTap ?? () {}),
      ),
    );
  }

  // Product card with assets image
  factory EcommerceElement.productCardAsset({
    ///
    /// [image] is required
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for product title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for product title color
    ///
    /// title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for product title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontSize] for product title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [titleFontWeight] for product title font weight
    ///
    /// title font weight
    ///
    FontWeight? titleFontWeight,

    ///
    /// [price] for product price
    ///
    /// price
    ///
    String? price,

    ///
    /// [priceColor] for product price color
    ///
    /// price color
    ///
    Color? priceColor,

    ///
    /// [priceFontFamily] for product price font family
    ///
    /// price font family
    ///
    String? priceFontFamily,

    ///
    /// [priceFontSize] for product price font size
    ///
    /// price font size
    ///
    double? priceFontSize,

    ///
    /// [priceFontWeight] for product price font weight
    ///
    /// price font weight
    ///
    FontWeight? priceFontWeight,

    ///
    /// [description] for product description
    ///
    /// description
    ///
    String? description,

    ///
    /// [descriptionColor] for product description color
    ///
    /// description color
    ///
    Color? descriptionColor,

    ///
    /// [descriptionFontFamily] for product description font family
    ///
    /// description font family
    ///
    String? descriptionFontFamily,

    ///
    /// [descriptionFontSize] for product description font size
    ///
    /// description font size
    ///
    double? descriptionFontSize,

    ///
    /// [backgroundColor] for product card background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [width] for product card width
    ///
    /// width
    ///
    double? width,

    ///
    /// [boxFit] for product card image box fit
    ///
    /// box fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [onTap] for product card onTap
    ///
    /// onTap
    ///
    Function()? onTap,
  }) {
    return EcommerceElement(
      child: SizedBox(
        width: width ?? 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image ?? 'assets/images/product.jpg',
              width: (width ?? 150) - 5,
              fit: imageBoxFit ?? BoxFit.cover,
            ),
            10.heightBox,
            (title ?? 'Product Title')
                .text
                .color(titleColor ?? Colors.black)
                .fontFamily(titleFontFamily ?? 'sans-serif')
                .fontWeight(titleFontWeight ?? FontWeight.bold)
                .size(titleFontSize ?? 14)
                .make(),
            10.heightBox,
            (price ?? 'Rs. 2000')
                .text
                .color(priceColor ?? Colors.black)
                .fontFamily(priceFontFamily ?? 'sans-serif')
                .fontWeight(priceFontWeight ?? FontWeight.normal)
                .size(priceFontSize ?? 16)
                .make(),
            (description ??
                    'This is a small description of the product. hope you understand')
                .text
                .color(descriptionColor ?? Colors.grey.shade500)
                .fontFamily(descriptionFontFamily ?? 'sans-serif')
                .size(descriptionFontSize ?? 12)
                .overflow(TextOverflow.ellipsis)
                .maxLines(2)
                .make(),
          ],
        )
            .box
            .color(backgroundColor ?? Colors.white)
            .margin(const EdgeInsets.symmetric(horizontal: 4))
            .roundedSM
            .padding(const EdgeInsets.all(8))
            .make()
            .onInkTap(onTap ?? () {}),
      ),
    );
  }

  // Category card with assets image
  factory EcommerceElement.categoryCardAsset({
    ///
    /// [image] for category image
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for category title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for category title color
    ///
    /// title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for category title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontSize] for category title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [description] for category description
    ///
    /// description
    ///
    String? description,

    ///
    /// [descriptionColor] for category description color
    ///
    /// description color
    ///
    Color? descriptionColor,

    ///
    /// [descriptionFontFamily] for category description font family
    ///
    /// description font family
    ///
    String? descriptionFontFamily,

    ///
    /// [descriptionFontSize] for category description font size
    ///
    /// description font size
    ///
    double? descriptionFontSize,

    ///
    /// [backgroundColor] for category card background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [onTap] for category card onTap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [height] for category card height
    ///
    /// height
    ///
    double? height,

    ///
    /// [width] for category card width
    ///
    /// width
    ///
    double? width,

    ///
    /// [imageBoxFit] for category card image box fit
    ///
    /// box fit
    ///
    BoxFit? imageBoxFit,
  }) {
    return EcommerceElement(
      child: Column(
        children: [
          Image.asset(
            image ?? 'assets/images/product.jpg',
            height: height ?? 120,
            width: width ?? 200,
            fit: imageBoxFit ?? BoxFit.cover,
          ),
          10.heightBox,
          (title ?? 'Category Title')
              .text
              .color(titleColor ?? Colors.black)
              .align(TextAlign.center)
              .fontFamily(titleFontFamily ?? 'sans-serif')
              .make(),
          10.heightBox,
          (description ?? 'This is a small description of the category')
              .text
              .color(descriptionColor ?? Colors.grey.shade500)
              .fontFamily(descriptionFontFamily ?? 'sans-serif')
              .size(descriptionFontSize ?? 12)
              .align(TextAlign.center)
              .overflow(TextOverflow.ellipsis)
              .maxLines(2)
              .make(),
        ],
      )
          .box
          .color(backgroundColor ?? Colors.white)
          .margin(const EdgeInsets.all(5))
          .roundedSM
          .clip(Clip.antiAlias)
          .make()
          .onTap(onTap ?? () {}),
    );
  }

  // Category card with network image
  factory EcommerceElement.categoryCard({
    ///
    /// [image] for category image
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for category title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for category title color
    ///
    /// title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for category title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontSize] for category title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [description] for category description
    ///
    /// description
    ///
    String? description,

    ///
    /// [descriptionColor] for category description color
    ///
    /// description color
    ///
    Color? descriptionColor,

    ///
    /// [descriptionFontFamily] for category description font family
    ///
    /// description font family
    ///
    String? descriptionFontFamily,

    ///
    /// [descriptionFontSize] for category description font size
    ///
    /// description font size
    ///
    double? descriptionFontSize,

    ///
    /// [backgroundColor] for category card background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [onTap] for category card onTap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [height] for category card height
    ///
    /// height
    ///
    double? height,

    ///
    /// [width] for category card width
    ///
    /// width
    ///
    double? width,

    ///
    /// [imageBoxFit] for category card image box fit
    ///
    /// box fit
    ///
    BoxFit? imageBoxFit,
  }) {
    return EcommerceElement(
      child: Column(
        children: [
          Image.network(
            image ?? 'https://picsum.photos/200/300',
            height: height ?? 120,
            width: width ?? 200,
            fit: BoxFit.cover,
          ),
          10.heightBox,
          (title ?? 'Category Title')
              .text
              .color(titleColor ?? Colors.black)
              .align(TextAlign.center)
              .fontFamily(titleFontFamily ?? 'sans-serif')
              .make(),
          (description ?? 'This is a small description of the category')
              .text
              .color(descriptionColor ?? Colors.grey.shade500)
              .fontFamily(descriptionFontFamily ?? 'sans-serif')
              .size(descriptionFontSize ?? 12)
              .align(TextAlign.center)
              .overflow(TextOverflow.ellipsis)
              .maxLines(2)
              .make(),
        ],
      )
          .box
          .color(backgroundColor ?? Colors.white)
          .rounded
          .clip(Clip.antiAlias)
          .outerShadowSm
          .make()
          .onTap(onTap ?? () {}),
    );
  }

  // Color selector for array for clors
  factory EcommerceElement.circularColorBox({
    ///
    /// [color] for color
    ///
    /// color
    ///
    Color? color,

    ///
    /// [onTap] for color selector onTap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [selectedColor] for color selector selected color
    ///
    /// selected color
    ///
    bool? selectedColor,

    ///
    /// [size] for color selector size
    ///
    /// size
    ///
    double? size,
  }) {
    return EcommerceElement(
        child: VxBox()
            .size(size ?? 20, size ?? 20)
            .roundedFull
            .color(color ?? Vx.randomColor)
            .border(
              color: selectedColor ?? false ? Colors.black : Colors.transparent,
              width: 2,
            )
            .margin(const EdgeInsets.symmetric(horizontal: 4))
            .make()
            .onInkTap(
              onTap ?? () {},
            ));
  }

  // Size selector for array for clors
  factory EcommerceElement.sizeSelector({
    ///
    /// [sizes] for size selector sizes
    ///
    /// sizes
    ///
    List<String>? sizes,

    ///
    /// [onTap] for size selector onTap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [selectedColor] for size selector selected color
    ///
    /// selected color
    ///
    Color? backgroundColor,

    ///
    /// [selected] for size selector selected
    ///
    /// selected
    ///
    bool? selected,

    ///
    /// [height] for size selector height
    ///
    /// height
    ///
    double? height,

    ///
    /// [width] for size selector width
    ///
    /// width
    ///
    double? width,
  }) {
    return EcommerceElement(
      child: Row(
        children: [
          for (var i = 0; i < sizes!.length; i++)
            Container(
              height: height ?? 30,
              width: width ?? 30,
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected ?? false ? Colors.black : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Center(
                child: sizes[i].text.color(Colors.white).make(),
              ),
            ).onInkTap(onTap ?? () {}),
        ],
      ),
    );
  }

  // Cart item
  factory EcommerceElement.cartItem({
    ///
    /// [image] for cart item image
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for cart item title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for cart item title color
    ///
    /// title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for cart item title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontSize] for cart item title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [subtitle] for cart item subtitle
    ///
    /// subtitle
    ///
    String? subtitle,

    ///
    /// [subtitleColor] for cart item subtitle color
    ///
    /// subtitle color
    ///
    Color? subtitleColor,

    ///
    /// [subtitleFontFamily] for cart item subtitle font family
    ///
    /// subtitle font family
    ///
    String? subtitleFontFamily,

    ///
    /// [subtitleFontSize] for cart item subtitle font size
    ///
    /// subtitle font size
    ///
    double? subtitleFontSize,

    ///
    /// [price] for cart item price
    ///
    /// price
    ///
    String? price,

    ///
    /// [priceColor] for cart item price color
    ///
    /// price color
    ///
    Color? priceColor,

    ///
    /// [priceFontFamily] for cart item price font family
    ///
    /// price font family
    ///
    String? priceFontFamily,

    ///
    /// [priceFontSize] for cart item price font size
    ///
    /// price font size
    ///
    double? priceFontSize,

    ///
    /// [onTap] for cart item onTap
    ///
    /// onTap
    ///
    Function()? onTap,

    ///
    /// [height] for cart item height
    ///
    /// height
    ///
    double? height,

    ///
    /// [width] for cart item width
    ///
    /// width
    ///
    double? width,

    ///
    /// [boxFit] for cart item image box fit
    ///
    /// box fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [productQuantity] for cart item product quantity
    ///
    /// product quantity
    ///
    int? productQuantity,

    ///
    /// [backgroundColor] for cart item background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [increaseQuantity] for cart item increase quantity
    ///
    /// increase quantity
    ///
    Function()? increaseQuantity,

    ///
    /// [decreaseQuantity] for cart item decrease quantity
    ///
    /// decrease quantity
    ///
    Function()? decreaseQuantity,

    ///
    /// [removeItem] for cart item remove item
    ///
    /// remove item
    ///
    Function()? removeItem,

    ///
    /// [showRemoveButton] for cart item show remove button
    ///
    /// show remove button
    ///
    bool? showRemoveButton,

    ///
    /// [productQuantityColor] for cart item product quantity color
    ///
    /// product quantity color
    ///
    Color? productQuantityColor,
  }) {
    return EcommerceElement(
      // child: Row(
      //   children: [
      //     Image.network(
      //       image!,
      //       height: height ?? 100,
      //       width: width ?? 100,
      //       fit: boxFit ?? BoxFit.cover,
      //     ).onInkTap(onTap ?? () {}),
      //     10.widthBox,
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         title!.text.color(titleColor ?? Colors.black).xl.make(),
      //         5.heightBox,
      //         subtitle!.text.color(subtitleColor ?? Colors.black).make(),
      //         5.heightBox,
      //         price!.text.color(priceColor ?? Colors.black).make(),
      //       ],
      //     ).expand(),
      //     10.widthBox,
      //     Column(
      //       children: [
      //         Container(
      //           height: 30,
      //           width: 30,
      //           decoration: BoxDecoration(
      //             color: backgroundColor ?? Colors.black,
      //             shape: BoxShape.circle,
      //           ),
      //           child: const Icon(
      //             Icons.add,
      //             color: Colors.white,
      //           ),
      //         ).onInkTap(increaseQuantity ?? () {}),
      //         5.heightBox,
      //         productQuantity!
      //             .toString()
      //             .text
      //             .color(productQuantityColor ?? Colors.black)
      //             .make(),
      //         5.heightBox,
      //         Container(
      //           height: 30,
      //           width: 30,
      //           decoration: BoxDecoration(
      //             color: backgroundColor ?? Colors.black,
      //             shape: BoxShape.circle,
      //           ),
      //           child: const Icon(
      //             Icons.remove,
      //             color: Colors.white,
      //           ),
      //         ).onInkTap(decreaseQuantity ?? () {}),
      //       ],
      //     ),
      //     10.widthBox,
      //     if (showRemoveButton ?? false)
      //       Container(
      //         height: 30,
      //         width: 30,
      //         decoration: BoxDecoration(
      //           color: backgroundColor ?? Colors.black,
      //           shape: BoxShape.circle,
      //         ),
      //         child: const Icon(
      //           Icons.close,
      //           color: Colors.white,
      //         ),
      //       ).onInkTap(removeItem ?? () {}),
      //   ],
      // ),

      child: Row(
        children: [
          Column(
            children: [
              Image.network(
                image ?? 'https://picsum.photos/200/300',
                height: height ?? 120,
                width: width ?? 200,
                fit: imageBoxFit ?? BoxFit.cover,
              ),
              10.heightBox,
              if (showRemoveButton ?? true)
                Row(
                  children: [
                    'Remove'
                        .text
                        .color(Colors.black)
                        .fontFamily('sans-serif')
                        .make(),
                    5.widthBox,
                    const Icon(
                      Icons.delete,
                      color: Colors.black,
                    ).onInkTap(removeItem ?? () {}),
                  ],
                ).onInkTap(removeItem ?? () {})
            ],
          ),
          10.widthBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (title ?? 'Category Title')
                  .text
                  .color(titleColor ?? Colors.black)
                  .align(TextAlign.center)
                  .fontFamily(titleFontFamily ?? 'sans-serif')
                  .make(),
              5.heightBox,
              (subtitle ?? 'Category Title')
                  .text
                  .color(subtitleColor ?? Colors.black)
                  .align(TextAlign.center)
                  .fontFamily(subtitleFontFamily ?? 'sans-serif')
                  .make(),
              5.heightBox,
              (price ?? 'Rs. 2000')
                  .text
                  .color(priceColor ?? Colors.black)
                  .align(TextAlign.center)
                  .fontFamily(priceFontFamily ?? 'sans-serif')
                  .make(),
            ],
          ).expand(),
          Row(
            children: [
              const Icon(
                Icons.remove,
                color: Colors.black,
              ).box.roundedSM.make().onInkTap(increaseQuantity ?? () {}),
              5.widthBox,
              (productQuantity ?? 0)
                  .text
                  .color(productQuantityColor ?? Colors.black)
                  .make(),
              5.widthBox,
              const Icon(
                Icons.add,
                color: Colors.black,
              ).box.roundedSM.make().onInkTap(decreaseQuantity ?? () {}),
            ],
          ),
        ],
      )
          .box
          .color(backgroundColor ?? Colors.white)
          .rounded
          .clip(Clip.antiAlias)
          .outerShadowSm
          .make()
          .onTap(onTap ?? () {}),
    );
  }

  // Profile Image
  factory EcommerceElement.profileImage({
    ///
    /// [image] for profile image
    ///
    /// profile image
    ///
    String? image,

    ///
    /// [height] for profile image height
    ///
    /// profile image height
    ///
    double? height,

    ///
    /// [width] for profile image width
    ///
    /// profile image width
    ///
    double? width,

    ///
    /// [boxFit] for profile image box fit
    ///
    /// profile image box fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [onTap] for profile image on tap
    ///
    /// profile image on tap
    ///
    Function()? onTap,
  }) {
    return EcommerceElement(
      child: Image.network(
        image ?? 'https://picsum.photos/200/300',
        height: height ?? 100,
        width: width ?? 100,
        fit: imageBoxFit ?? BoxFit.cover,
      ).onInkTap(onTap ?? () {}),
    );
  }

  // Prfile image circular
  factory EcommerceElement.profileImageCircular({
    ///
    /// [image] for profile image
    ///
    /// profile image
    ///
    String? image,

    ///
    /// [height] for profile image height
    ///
    /// profile image height
    ///
    double? height,

    ///
    /// [width] for profile image width
    ///
    /// profile image width
    ///
    double? width,

    ///
    /// [boxFit] for profile image box fit
    ///
    /// profile image box fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [onTap] for profile image on tap
    ///
    /// profile image on tap
    ///
    Function()? onTap,
  }) {
    return EcommerceElement(
      child: Image.network(
        image ?? 'https://picsum.photos/200/300',
        height: height ?? 100,
        width: width ?? 100,
        fit: imageBoxFit ?? BoxFit.cover,
      ).box.roundedFull.make().onInkTap(onTap ?? () {}),
    );
  }

  // Increase Decrease Quantity
  factory EcommerceElement.increaseDecreaseQuantity({
    ///
    /// [productQuantity] for product quantity
    ///
    /// product quantity
    ///
    int? productQuantity,

    ///
    /// [productQuantityColor] for product quantity color
    ///
    /// product quantity color
    ///
    Color? productQuantityColor,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [increaseQuantity] for increase quantity
    ///
    /// increase quantity
    ///
    Function()? increaseQuantity,

    ///
    /// [decreaseQuantity] for decrease quantity
    ///
    /// decrease quantity
    ///
    Function()? decreaseQuantity,
  }) {
    return EcommerceElement(
      child: Row(
        children: [
          const Icon(
            Icons.remove,
            color: Colors.black,
          ).box.roundedSM.make().onInkTap(decreaseQuantity ?? () {}),
          5.widthBox,
          (productQuantity ?? 0)
              .text
              .color(productQuantityColor ?? Colors.black)
              .make(),
          5.widthBox,
          const Icon(
            Icons.add,
            color: Colors.black,
          ).box.roundedSM.make().onInkTap(increaseQuantity ?? () {}),
        ],
      ),
    );
  }

  // // Product Slider
  // factory EcommerceElement.productSlider({
  //   ///
  //   /// [image] for product image
  //   ///
  //   /// product image
  //   ///
  //   String? image,
  //   ///
  //   /// [height] for product image height
  //   ///
  //   /// product image height
  //   ///
  //   double? height,
  //   ///
  //   /// [width] for product image width
  //   ///
  //   /// product image width
  //   ///
  //   double? width,
  //   ///
  //   /// [boxFit] for product image box fit
  //   ///
  //   /// product image box fit
  //   ///
  //   BoxFit? boxFit,
  //   ///
  //   /// [title] for product title
  //   ///
  //   /// product title
  //   ///
  //   String? title,
  //   ///
  //   /// [titleColor] for product title color
  //   ///
  //   /// product title color
  //   ///
  //   Color? titleColor,
  //   ///
  //   /// [titleFontFamily] for product title font family
  //   ///
  //   /// product title font family
  //   ///
  //   String? titleFontFamily,
  //   ///
  //   /// [subtitle] for product subtitle
  //   ///
  //   /// product subtitle
  //   ///
  //   String? subtitle,
  //   ///
  //   /// [subtitleColor] for product subtitle color
  //   ///
  //   /// product subtitle color
  //   ///
  //   Color? subtitleColor,
  //   ///
  //   /// [subtitleFontFamily] for product subtitle font family
  //   ///
  //   /// product subtitle font family
  //   ///
  //   String? subtitleFontFamily,
  //   ///
  //   /// [price] for product price
  //   ///
  //   /// product price
  //   ///
  //   String? price,
  //   ///
  //   /// [priceColor] for product price color
  //   ///
  //   /// product price color
  //   ///
  //   Color? priceColor,
  //   ///
  //   /// [priceFontFamily] for product price font family
  //   ///
  //   /// product price font family
  //   ///
  //   String? priceFontFamily,
  //   ///
  //   /// [showRemoveButton] for show remove button
  //   ///
  //   /// show remove button
  //   ///
  //   bool? showRemoveButton,
  //   ///
  //   /// [removeItem] for remove item
  //   ///
  //   /// remove item
  //   ///
  //   Function()? removeItem,
  //   ///
  //   /// [productQuantity] for product quantity
  //   ///
  //   /// product quantity
  //   ///
  //   int? productQuantity,
  //   ///
  //   /// [productQuantityColor] for product quantity color
  //   ///
  //   /// product quantity color
  //   ///
  //   Color? productQuantityColor,
  //   ///
  //   /// [backgroundColor] for background color
  //   ///
  //   /// background color
  //   ///
  //   Color? backgroundColor,
  // }) {
  //   return EcommerceElement(
  //     child: VStack(
  //       [
  //         Image.network(
  //           image ?? 'https://picsum.photos/200/300',
  //           height: height ?? 100,
  //           width: width ?? 100,
  //           fit: boxFit ?? BoxFit.cover,
  //         ),
  //         5.heightBox,
  //         (title ?? '')
  //             .text
  //             .color(titleColor ?? Colors.black)
  //             .fontFamily(titleFontFamily ?? 'Poppins')
  //             .make(),
  //         5.heightBox,
  //         (subtitle ?? '')
  //             .text
  //             .color(subtitleColor ?? Colors.black)
  //             .fontFamily(subtitleFontFamily ?? 'Poppins')
  //             .make(),
  //         5.heightBox,
  //         (price ?? '')
  //             .text
  //             .color(priceColor ?? Colors.black)
  //             .fontFamily(priceFontFamily ?? 'Poppins')
  //             .make(),
  //         5.heightBox,
  //         if (showRemoveButton ?? false)
  //           const Icon(
  //             Icons.remove_circle,
  //             color: Colors.red,
  //           ).box.roundedSM.make().onInkTap(removeItem ?? () {}),
  //         5.heightBox,
  //         EcommerceElement.increaseDecreaseQuantity(
  //           productQuantity: productQuantity,
  //           productQuantityColor: productQuantityColor,
  //           backgroundColor: backgroundColor,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Input Field
  factory EcommerceElement.inputField({
    ///
    /// [title] for input field title
    ///
    /// input field title
    ///
    String? title,

    ///
    /// [titleColor] for input field title color
    ///
    /// input field title color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for input field title font family
    ///
    /// input field title font family
    ///
    String? titleFontFamily,

    ///
    /// [hint] for input field hint
    ///
    /// input field hint
    ///
    String? hint,

    ///
    /// [controller] for input field controller
    ///
    /// input field controller
    ///
    TextEditingController? controller,

    ///
    /// [keyboardType] for input field keyboard type
    ///
    /// input field keyboard type
    ///
    TextInputType? keyboardType,

    ///
    /// [isPassword] for input field is password
    ///
    /// input field is password
    ///
    bool? isPassword,

    ///
    /// [fillColor] for input field fill color
    ///
    /// input field fill color
    ///
    Color? fillColor,

    ///
    /// [onChanged] for input field on changed
    ///
    /// input field on changed
    ///
    Function(String)? onChanged,

    ///
    /// [onTap] for input field on tap
    ///
    /// input field on tap
    ///
    Function()? onTap,

    ///
    /// [onSubmitted] for input field on submitted
    ///
    /// input field on submitted
    ///
    Function(String)? onSubmitted,

    ///
    /// [fontFamily] for input field font family
    ///
    /// input field font family
    ///
    String? fontFamily,

    ///
    /// [fontSize] for input field font size
    ///
    /// input field font size
    ///
    double? fontSize,

    ///
    /// [fontColor] for input field font color
    ///
    /// input field font color
    ///
    Color? fontColor,

    ///
    /// [borderColor] for input field border color
    ///
    /// input field border color
    ///
    Color? borderColor,

    ///
    /// [maxLines] for input field max lines
    ///
    /// input field max lines
    ///
    int? maxLines,

    ///
    /// [obscureText] for input field obscure text
    ///
    /// input field obscure text
    ///
    bool? obscureText,

    ///
    /// [validator] for input field validator
    ///
    /// input field validator
    ///
    String? Function(String?)? validator,
  }) {
    return EcommerceElement(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (title ?? '')
            .text
            .color(titleColor ?? Colors.red)
            .fontFamily(titleFontFamily ?? 'Poppins')
            .size(15)
            .make(),
        5.heightBox,
        TextFormField(
          validator: validator ??
              (value) {
                return null;
              },
          obscuringCharacter: obscureText ?? false ? '*' : '',
          maxLines: maxLines ?? 1,
          keyboardType: keyboardType ?? TextInputType.text,
          obscureText: isPassword ?? false,
          controller: controller,
          onChanged: onChanged ?? (value) {},
          onTap: onTap ?? () {},
          onFieldSubmitted: onSubmitted ?? (value) {},
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontFamily: fontFamily ?? 'sans-serif',
              color: fontColor ?? Colors.grey.shade500,
            ),
            hintText: hint ?? "Please Provide Data",
            isDense: true,
            fillColor: fillColor ?? Colors.grey.shade400,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Colors.red),
            ),
          ),
        ),
        5.heightBox,
      ],
    ));
  }

  // Button
  factory EcommerceElement.button({
    ///
    /// [onPress] for button on press
    ///
    /// button on press
    ///
    Function()? onPress,

    ///
    /// [color] for button color
    ///
    /// button color
    ///
    Color? backgroundColor,

    ///
    /// [textColor] for button text color
    ///
    /// button text color
    ///
    Color? textColor,

    ///
    /// [title] for button title
    ///
    /// button title
    ///
    String? title,

    ///
    /// [fontFamily] for button font family
    ///
    /// button font family
    ///
    String? fontFamily,
  }) {
    return EcommerceElement(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.red,
          padding: const EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPress,
        child: title!.text
            .color(textColor ?? Colors.black)
            .fontFamily(fontFamily ?? 'sans-serif')
            .make(),
      ),
    );
  }

  // Login Screen
  factory EcommerceElement.loginScreen({
    ///
    /// [logo] for logo
    ///
    /// logo
    ///
    String? logo,

    ///
    /// [logoHeight] for logo height
    ///
    /// logo height
    ///
    double? logoHeight,

    ///
    /// [logoWidth] for logo width
    ///
    /// logo width
    ///
    double? logoWidth,

    ///
    /// [logoBoxFit] for logo box fit
    ///
    /// logo box fit
    ///
    BoxFit? logoBoxFit,

    ///
    /// [logoBackgroundColor] for logo background color
    ///
    /// logo background color
    ///
    Color? logoBackgroundColor,

    ///
    /// [emailController] for email controller
    ///
    /// email controller
    ///
    TextEditingController? emailController,

    ///
    /// [passwordController] for password controller
    ///
    /// password controller
    ///
    TextEditingController? passwordController,

    ///
    /// [onTapLogin] for on tap login
    ///
    /// on tap login
    ///
    Function()? onTapLogin,

    ///
    /// [onTapSignUp] for on tap sign up
    ///
    /// on tap sign up
    ///
    Function()? onTapSignUp,
  }) {
    return EcommerceElement(
      child: VStack(
        [
          Image.network(
            logo ?? 'https://picsum.photos/200/300',
            height: logoHeight ?? 100,
            width: logoWidth ?? 100,
            fit: logoBoxFit ?? BoxFit.cover,
          )
              .box
              .roundedSM
              .make()
              .backgroundColor(logoBackgroundColor ?? Colors.white),
          20.heightBox,
          EcommerceElement.inputField(
            controller: emailController,
            hint: 'Email',
          ),
          20.heightBox,
          EcommerceElement.inputField(
            controller: passwordController,
            hint: 'Password',
            isPassword: true,
            obscureText: true,
          ),
          20.heightBox,
          EcommerceElement.button(
            title: 'Login',
            onPress: onTapLogin,
          ),
          20.heightBox,
          // dont have account
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'Don\'t have an account?'.text.color(Colors.grey.shade500).make(),
              5.widthBox,
              'Sign Up'.text.color(Colors.red).make().onTap(onTapSignUp),
            ],
          )
        ],
      ),
    );
  }

  // Sign Up Screen
  factory EcommerceElement.signUpScreen({
    ///
    /// [logo] for logo
    ///
    /// logo
    ///
    String? logo,

    ///
    /// [logoHeight] for logo height
    ///
    /// logo height
    ///
    double? logoHeight,

    ///
    /// [logoWidth] for logo width
    ///
    /// logo width
    ///
    double? logoWidth,

    ///
    /// [logoBoxFit] for logo box fit
    ///
    /// logo box fit
    ///
    BoxFit? logoBoxFit,

    ///
    /// [logoBackgroundColor] for logo background color
    ///
    /// logo background color
    ///
    Color? logoBackgroundColor,

    ///
    /// [nameController] for name controller
    ///
    /// name controller
    ///
    TextEditingController? nameController,

    ///
    /// [emailController] for email controller
    ///
    /// email controller
    ///
    TextEditingController? emailController,

    ///
    /// [passwordController] for password controller
    ///
    /// password controller
    ///
    TextEditingController? passwordController,

    ///
    /// [confirmPasswordController] for confirm password controller
    ///
    /// confirm password controller
    ///
    TextEditingController? confirmPasswordController,

    ///
    /// [onTapSignUp] for on tap sign up
    ///
    /// on tap sign up
    ///
    Function()? onTapSignUp,

    ///
    /// [onTapLogin] for on tap login
    ///
    /// on tap login
    ///
    Function()? onTapLogin,
  }) {
    return EcommerceElement(
      child: VStack(
        [
          Image.network(
            logo ?? 'https://picsum.photos/200/300',
            height: logoHeight ?? 100,
            width: logoWidth ?? 100,
            fit: logoBoxFit ?? BoxFit.cover,
          )
              .box
              .roundedSM
              .make()
              .backgroundColor(logoBackgroundColor ?? Colors.white),
          20.heightBox,
          EcommerceElement.inputField(
            controller: nameController,
            hint: 'Name',
          ),
          20.heightBox,
          EcommerceElement.inputField(
            controller: emailController,
            hint: 'Email',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
          ),
          20.heightBox,
          EcommerceElement.inputField(
            controller: passwordController,
            hint: 'Password',
            isPassword: true,
            obscureText: true,
          ),
          20.heightBox,
          EcommerceElement.inputField(
            controller: confirmPasswordController,
            hint: 'Confirm Password',
            isPassword: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter confirm password';
              } else if (value != passwordController!.text) {
                return 'Password not match';
              }
              return null;
            },
          ),
          20.heightBox,
          EcommerceElement.button(
            title: 'Sign Up',
            onPress: onTapSignUp,
          ),
          20.heightBox,
          // dont have account
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'Already have an account?'
                  .text
                  .color(Colors.grey.shade500)
                  .make(),
              5.widthBox,
              'Login'.text.color(Colors.red).make().onTap(onTapLogin),
            ],
          )
        ],
      ),
    );
  }

  // remove product alert boc
  factory EcommerceElement.removeProductAlertBoxOne({
    ///
    /// [onTapYes] for on tap yes
    ///
    /// on tap yes
    ///
    Function()? onTapYes,

    ///
    /// [onTapNo] for on tap no
    ///
    /// on tap no
    ///
    Function()? onTapNo,

    ///
    /// [productName] for product name
    ///
    /// product name
    ///
    String? productName,
  }) {
    return EcommerceElement(
      child: AlertDialog(
        title: 'Remove Product'.text.make(),
        content: 'Are you sure you want to remove $productName?'.text.make(),
        actions: [
          TextButton(
            onPressed: onTapNo,
            child: 'No'.text.make(),
          ),
          TextButton(
            onPressed: onTapYes,
            child: 'Yes'.text.make(),
          ),
        ],
      ),
    );
  }

  // remove product alert boc
  factory EcommerceElement.removeProductAlertBoxTwo({
    ///
    /// [onTapYes] for on tap yes
    ///
    /// on tap yes
    ///
    Function()? onTapYes,

    ///
    /// [onTapNo] for on tap no
    ///
    /// on tap no
    ///
    Function()? onTapNo,

    ///
    /// [productName] for product name
    ///
    /// product name
    ///
    String? productName,
  }) {
    return EcommerceElement(
      child: VStack(
        [
          'Are you sure you want to remove $productName?'
              .text
              .color(Colors.grey.shade500)
              .make(),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EcommerceElement.button(
                title: 'Yes',
                onPress: onTapYes,
              ),
              EcommerceElement.button(
                title: 'No',
                onPress: onTapNo,
              ),
            ],
          )
        ],
      ),
    );
  }

  // Delete Account Alert Box
  factory EcommerceElement.deleteAccount({
    ///
    /// [onTapYes] for on tap yes
    ///
    /// on tap yes
    ///
    Function()? onTapYes,

    ///
    /// [onTapNo] for on tap no
    ///
    /// on tap no
    ///
    Function()? onTapNo,
  }) {
    return EcommerceElement(
      child: VStack(
        [
          'Are you sure you want to delete your account?'
              .text
              .color(Colors.grey.shade500)
              .make(),
          10.heightBox,
          'This action cannot be undone'
              .text
              .color(Colors.grey.shade500)
              .make(),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EcommerceElement.button(
                title: 'Yes',
                onPress: onTapYes,
              ),
              EcommerceElement.button(
                title: 'No',
                onPress: onTapNo,
              ),
            ],
          )
        ],
      ),
    );
  }

  factory EcommerceElement.menuItem({
    ///
    /// [onTap] for on tap
    ///
    /// on tap
    ///
    Function()? onTap,

    ///
    /// [leading] for leading
    ///
    /// leading
    ///
    Widget? leading,

    ///
    /// [title] for title
    ///
    /// title
    ///
    Widget? title,

    ///
    /// [subtitle] for subtitle
    ///
    /// subtitle
    ///
    Widget? subtitle,

    ///
    /// [trailing] for trailing
    ///
    /// trailing
    ///
    Widget? trailing,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,
  }) {
    return EcommerceElement(
      child: ListTile(
        tileColor: backgroundColor ?? Colors.white,
        onTap: onTap ?? () {},
        leading: leading,
        title: title ?? 'Title'.text.make(),
        subtitle: subtitle,
        trailing: trailing,
      ),
    );
  }

  factory EcommerceElement.filterCard({
    ///
    /// [onTap] for on tap
    ///
    /// on tap
    ///
    Function()? onTap,

    ///
    /// [title] for title
    ///
    /// title
    ///
    Widget? title,

    ///
    /// [deleteIcon] for delete icon
    ///
    /// delete icon
    ///
    Widget? deleteIcon,

    /// [onDelete] for on delete
    ///
    /// on delete
    ///
    Function()? onDelete,

    ///
    /// [deleteIconColor] for delete icon color
    ///
    /// delete icon color
    ///
    Color? deleteIconColor,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [labelStyle] for label style
    ///
    /// label style
    ///
    TextStyle? labelStyle,

    ///
    /// [avatar] for avatar
    ///
    /// avatar
    ///
    Widget? avatar,

    ///
    /// [elevation] for elevation
    ///
    /// elevation
    ///
    double? elevation,
  }) {
    return EcommerceElement(
        child: Chip(
      elevation: elevation ?? 0,
      padding: const EdgeInsets.all(4),
      backgroundColor: backgroundColor ?? Colors.orange,
      label: title ?? 'Title'.text.make(),
      avatar: avatar,
      labelStyle: labelStyle ?? const TextStyle(color: Colors.black),
      deleteIcon: deleteIcon ?? const Icon(Icons.close, size: 15),
      onDeleted: onDelete ?? () {},
      deleteIconColor: deleteIconColor ?? Colors.red,
      visualDensity: VisualDensity.compact,
      shadowColor: Colors.grey,
    ).box.make().onInkTap(() {
      onTap ?? () {};
    }));
  }

  // Add to cart button
  factory EcommerceElement.addToCartButton({
    ///
    /// [onTap] for on tap
    ///
    /// on tap
    ///
    Function()? onTap,

    ///
    /// [title] for title
    ///
    /// title
    ///
    String? title,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [textColor] for text color
    ///
    /// text color
    ///
    Color? textColor,
  }) {
    return EcommerceElement(
      child: EcommerceElement.button(
        title: title ?? 'Add to Cart',
        onPress: onTap,
        backgroundColor: backgroundColor ?? Colors.red,
        textColor: textColor ?? Colors.white,
      ),
    );
  }

  // Hedaing
  factory EcommerceElement.heading({
    ///
    /// [title] for title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for title Color
    ///
    /// title COlor
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily]
    ///
    /// Titlw Font Family
    ///
    String? titleFontFamily,

    ///
    /// [titleFontWeight] for title font weight
    ///
    /// title font weight
    ///
    FontWeight? titleFontWeight,

    ///
    /// [titleFontSize] for title font size
    ///
    /// title font size
    ///
    double? titleFontSize,

    ///
    /// [subtitle] for subtitle
    ///
    /// subtitle
    ///
    String? subtitle,

    ///
    /// [subtitleColor] for subtitle Color
    ///
    /// subtitle Color
    ///
    Color? subtitleColor,

    ///
    /// [subtitleFontFamily]
    ///
    /// subtitle Font Family
    ///
    String? subtitleFontFamily,

    ///
    /// [subtitleFontWeight] for subtitle font weight
    ///
    /// subtitle font weight
    ///
    FontWeight? subtitleFontWeight,

    ///
    /// [subtitleFontSize] for subtitle font size
    ///
    /// subtitle font size
    ///
    double? subtitleFontSize,

    ///
    /// [onTap] for on tap
    ///
    /// on tap
    ///
    Function()? onTap,

    ///
    /// [trailing] for trailing
    ///
    /// trailing
    ///
    Widget? trailing,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,
  }) {
    return EcommerceElement(
      child: ListTile(
        tileColor: backgroundColor ?? Colors.white,
        onTap: onTap ?? () {},
        title: (title ?? 'Title')
            .text
            .color(titleColor ?? Colors.black)
            .fontFamily(titleFontFamily ?? 'sans-serif')
            .fontWeight(titleFontWeight ?? FontWeight.bold)
            .size(titleFontSize ?? 20)
            .make(),
        subtitle: (subtitle ?? '')
            .text
            .color(subtitleColor ?? Colors.grey.shade500)
            .fontFamily(subtitleFontFamily ?? 'sans-serif')
            .fontWeight(subtitleFontWeight ?? FontWeight.normal)
            .size(subtitleFontSize ?? 16)
            .make(),
        trailing: trailing ?? const SizedBox(),
      ),
    );
  }

  // Featured Button
  factory EcommerceElement.featuredButtonAsset({
    ///
    /// [image] for image
    ///
    /// image
    ///
    String? image,

    ///
    /// [title] for title
    ///
    /// title
    ///
    String? title,

    ///
    /// [titleColor] for title Color
    ///
    /// title Color
    ///
    Color? titleColor,

    ///
    /// [titleFontFamily] for title font family
    ///
    /// title font family
    ///
    String? titleFontFamily,

    ///
    /// [subtitle] for subtitle
    ///
    /// subtitle
    ///
    String? subtitle,

    ///
    /// [subtitleColor] for subtitle Color
    ///
    /// subtitle Color
    ///
    Color? subtitleColor,

    ///
    /// [subtitleFontFamily] for subtitle font family
    ///
    /// subtitle font family
    ///
    String? subtitleFontFamily,

    ///
    /// [onTap] for on tap
    ///
    /// on tap
    ///
    Function()? onTap,

    ///
    /// [backgroundColor] for background color
    ///
    /// background color
    ///
    Color? backgroundColor,

    ///
    /// [imageFit] for image fit
    ///
    /// image fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [imageWidth] for image width
    ///
    /// image width
    ///
    double? imageWidth,

    ///
    /// [featuredButtonWidth] for featured button width
    ///
    /// featured button width
    ///
    double? featuredButtonWidth,
  }) {
    return EcommerceElement(
        child: Row(
      children: [
        Image.asset(
          image ?? 'assets/images/product.jpg',
          width: imageWidth ?? 60,
          fit: imageBoxFit ?? BoxFit.cover,
        ),
        10.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (title ?? 'Title')
                .text
                .fontFamily(titleFontFamily ?? 'sans-serif')
                .color(titleColor ?? Colors.black)
                .make(),
            (subtitle ?? '')
                .text
                .fontFamily(subtitleFontFamily ?? 'sans-serif')
                .color(subtitleColor ?? Colors.grey.shade500)
                .make(),
          ],
        )
      ],
    )
            .box
            .width(featuredButtonWidth ?? 200)
            .color(backgroundColor ?? Colors.white)
            .margin(const EdgeInsets.symmetric(horizontal: 4))
            .padding(const EdgeInsets.all(4))
            .roundedSM
            .outerShadowSm
            .make()
            .onInkTap(onTap ?? () {}));
  }

  // Slide Show of product images
  factory EcommerceElement.slideShow({
    ///
    /// [images] for images
    ///
    /// images
    ///
    List<String>? images,

    ///
    /// [height] for height
    ///
    /// height
    ///
    double? height,

    ///
    /// [aspectRatio] for aspect ratio
    ///
    /// aspect ratio
    ///
    double? aspectRatio,

    ///
    /// [autoPlay] for auto play
    ///
    /// auto play
    ///
    bool? autoPlay,

    ///
    /// [imageBoxFit] for image fit
    ///
    /// image fit
    ///
    BoxFit? imageBoxFit,

    ///
    /// [imageWidth] for image width
    ///
    /// image width
    ///
    double? imageWidth,

    ///
    /// [imageHeight] for image height
    ///
    /// image height
    ///
    double? imageHeight,
  }) {
    return EcommerceElement(
      child: VxSwiper.builder(
          autoPlay: autoPlay ?? true,
          height: height ?? 350,
          aspectRatio: aspectRatio ?? 16 / 9,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          itemCount: images?.length ?? 3,
          itemBuilder: (context, index) {
            return Image.asset(
              images?[index] ?? 'assets/images/product.jpg',
              height: imageHeight ?? double.infinity,
              width: imageWidth ?? double.infinity,
              fit: imageBoxFit ?? BoxFit.cover,
            );
          }),
    );
  }

  // Rating
  factory EcommerceElement.rating({
    ///
    /// [onRatingUpdate] for on rating update
    ///
    /// on rating update
    ///
    Function(String)? onRatingUpdate,

    ///
    /// [normalColor] for normal color
    ///
    /// normal color
    ///
    Color? normalColor,

    ///
    /// [selectionColor] for selection color
    ///
    /// selection color
    ///
    Color? selectionColor,

    ///
    /// [count] for count
    ///
    /// count
    ///
    int? count,

    ///
    /// [size] for size
    ///
    /// size
    ///
    double? size,

    ///
    /// [stepInt] for step int
    ///
    /// step int
    ///
    bool? stepInt,

    ///
    /// [isSelectable] for is selectable
    ///
    /// is selectable
    ///
    bool? isSelectable,
  }) {
    return EcommerceElement(
      child: VxRating(
        isSelectable: isSelectable ?? true,
        onRatingUpdate: onRatingUpdate ?? (value) {},
        normalColor: normalColor ?? Colors.grey.shade300,
        selectionColor: selectionColor ?? Colors.amber,
        count: count ?? 5,
        size: size ?? 20,
        stepInt: stepInt ?? true,
      ),
    );
  }
}
