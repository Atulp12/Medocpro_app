// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medocpro_app/features/home/widgets/stars.dart';
import 'package:medocpro_app/utils/global.dart';

class CardItem extends StatelessWidget {
  final VoidCallback function;
  const CardItem({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shadowColor: GlobalVariables.shadowColor,
      surfaceTintColor: GlobalVariables.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: size.width * 0.45,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: GlobalVariables.whiteColor,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.13,
              width: size.width * 0.35,
              child: InkWell(
                onTap: function,
                child: Image.asset(
                  'assets/images/item.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Stars(
                    rating: 5,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_outline,
                        size: 20,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Oral Irrigator Electric'),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '\$103',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: GlobalVariables.discountColor),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '\$173',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: size.height * 0.036,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 1, color: GlobalVariables.secondaryColor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.1,
                    height: size.height * 0.036,
                    decoration: ShapeDecoration(
                      color: GlobalVariables.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Add to Cart')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
