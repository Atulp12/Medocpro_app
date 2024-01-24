

import 'package:flutter/material.dart';
import 'package:medocpro_app/utils/global.dart';

class CustomButton extends StatelessWidget {
  final bool isPass;
  
  const CustomButton({
    Key? key,
    required this.isPass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: isPass ? GlobalVariables.primaryColor : Colors.teal[200],
            minimumSize: isPass ?  Size(size.width * 0.5, 50) : Size(size.width * 0.4, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              isPass ? const Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Icon(
                 Icons.shopping_cart,
                  size: 24.0,
                  color: GlobalVariables.whiteColor
                ),
              ) : const Padding(
                padding: EdgeInsets.only(bottom: 3),
                child: Icon(
                  Icons.shopify,
                  size: 24.0,
                  color: GlobalVariables.whiteColor
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              isPass ? const Text('ADD TO CART',style: TextStyle(color: GlobalVariables.whiteColor),) : const Text('BUY NOW',style: TextStyle(color: GlobalVariables.whiteColor)),
              
            ],
          ),
        ),
      ],
    );
  }
}
