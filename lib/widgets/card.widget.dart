import 'package:ecommerce/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final String bankName;
  final String cardHolder;
  final String cardNumber;
  final String expiryDate;
  final String assetPath;
  final Color? assetColor;
  final Color? cardColor;

  const MyCard(
      {super.key,
      this.bankName = 'Bank Name',
      this.cardHolder = 'Card Holder',
      this.cardNumber = '1234 4354 3423 3421',
      this.expiryDate = '01/21',
      required this.assetPath,
      this.assetColor,
      this.cardColor});

  @override
  Widget build(BuildContext context) {
    TextStyle cardNums = const TextStyle(
        color: Colors.white,
        fontFamily: 'CreditCard',
        fontSize: 13,
        fontWeight: FontWeight.w300);
    TextStyle cardFont =
        GoogleFonts.roboto(color: Colors.white, fontWeight: FontWeight.w300);

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
          height: 175,
          width: context.deviceSize.width * .9,
          child: Card(
              color: cardColor,
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Bank Name',
                          style: cardFont,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '1234 4354 3423 3421',
                          style: cardNums,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            '01/21',
                            style: cardFont,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Card Holder'.toUpperCase(),
                          style: cardFont,
                        ),
                        SvgPicture.asset(
                          assetPath,
                          // ignore: deprecated_member_use
                          color: assetColor,
                          height: 40,
                          width: 40,
                        )
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
