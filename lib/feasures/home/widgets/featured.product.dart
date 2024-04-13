import 'package:ecommerce/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct(
      {super.key,
      required this.name,
      required this.price,
      required this.image});
  // final Product product;
  final String name;
  final int price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: context.deviceSize.height * .3 / 2,
          width: context.deviceSize.width * .3,
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => SizedBox(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: FadeInImage.memoryNetwork(
                        fit: BoxFit.fill,
                        placeholder: kTransparentImage,
                        image: image ?? 'https://i.imgur.com/QkIa5tT.jpeg',
                        imageErrorBuilder: (BuildContext context, Object error,
                            StackTrace? stackTrace) {
                          return Center(
                            child: Container(
                              color: Colors.grey,
                              child: Image.network(
                                  'https://i.imgur.com/kKc9A5p.jpeg'),
                            ),
                          );
                        },
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: context.deviceSize.width * .3,
          child: Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text('$price')
      ],
    );
  }
}
