import 'package:ecommerce/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, this.widget});
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          flex: 2,
          child: MySearchBar(hint: "Search Product"),
        ),
        widget != null
            ? Flexible(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [widget!]))
            : const Text('')
      ],
    );
  }
}
