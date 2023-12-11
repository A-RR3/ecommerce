import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class YourActivity extends StatelessWidget {
  const YourActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Activity',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Gap(10),
        SizedBox(
          height: Get.height * .4,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    elevation: 3,
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.check,
                          size: 30,
                        ),
                      ),
                      title: const Text('Your Activity'),
                      subtitle: Text(
                        softWrap: true,
                        " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\nYestarday 10:00 am",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      isThreeLine: true,
                    ),
                  )),
        )
      ],
    );
  }
}
