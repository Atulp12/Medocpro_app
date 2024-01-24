import 'package:flutter/material.dart';
import 'package:medocpro_app/features/home/widgets/item_card.dart';
import 'package:medocpro_app/features/products_detail/screen/product_detail_screen.dart';
import 'package:medocpro_app/utils/global.dart';

class BestContainer extends StatelessWidget {
  final String text;
  final bool isOffer;
  const BestContainer({super.key, required this.text, required this.isOffer});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      decoration: const BoxDecoration(color: GlobalVariables.appBarColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              if (isOffer)
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.09,
                  padding: const EdgeInsets.all(7),
                  decoration: const ShapeDecoration(
                    color: GlobalVariables.discountColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                    ),
                  ),
                  child: const Text(
                    '41% off',
                    style: TextStyle(
                      color: GlobalVariables.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(
            height: size.height * 0.33,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 12),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return CardItem(
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailScreen(),
                        ),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
