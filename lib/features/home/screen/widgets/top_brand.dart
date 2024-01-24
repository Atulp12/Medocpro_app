import 'package:flutter/material.dart';
import 'package:medocpro_app/utils/global.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Top Brands',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 69,
          child: ListView.builder(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, i) {
              return Container(
                width: 121,
                margin: const EdgeInsets.only(right: 8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        width: 1, color: GlobalVariables.primaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Image.asset('assets/images/brand.png'),
              );
            },
          ),
        ),
      ],
    );
  }
}
