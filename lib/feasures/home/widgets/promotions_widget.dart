import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Promotions',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(10),
        SizedBox(
          height: Get.height * .35,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    elevation: 3,
                    child: ListTile(
                      leading: ClipRect(
                        child: Image.asset("assets/images/computer.jpg",
                            fit: BoxFit.fitWidth),
                      ),
                      title: const Text(
                          overflow: TextOverflow.ellipsis,
                          ''' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'''),
                      subtitle: Text(
                        '10:00 am',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
