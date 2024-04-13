import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchProductHeader extends StatelessWidget {
  const SearchProductHeader({
    super.key,
    this.notifications,
    this.cart,
    this.filter,
    required this.onChanged,
  });
  final Widget? notifications;
  final Widget? cart;
  final Widget? filter;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: MySearchBar(onChanged: onChanged, hint: "Search Product"),
        ),
        notifications != null
            ? Flexible(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [notifications!, cart!]))
            : filter != null
                ? Flexible(
                    child: Align(
                    alignment: Alignment.center,
                    child: filter!,
                  ))
                : const Text('')
      ],
    );
  }
}
