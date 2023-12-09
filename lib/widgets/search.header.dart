import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, this.notifications, this.cart, this.filter});
  final Widget? notifications;
  final Widget? cart;
  final Widget? filter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          flex: 2,
          child: MySearchBar(hint: "Search Product"),
        ),
        notifications != null
            ? Flexible(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [notifications!, cart!]))
            : filter != null
                ? Flexible(
                    child: Align(
                    alignment: Alignment.centerRight,
                    child: filter!,
                  ))
                : const Text('')
      ],
    );
  }
}
