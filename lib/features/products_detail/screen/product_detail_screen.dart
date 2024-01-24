// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medocpro_app/common/widgets/custom_button.dart';
import 'package:medocpro_app/utils/global.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            child: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.favorite_outline)),
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.32,
            width: size.width * 0.8,
            child: Image.asset(
              'assets/images/product.png',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Container(
                  height: size.height * 0.475,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: GlobalVariables.appBarColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Product Name'),
                      const Text('by - '),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Product Price'),
                            Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () => {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                            ),
                                            width: 35,
                                            height: 32,
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.remove,
                                              size: 18,
                                              color: GlobalVariables.primaryColor,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 35,
                                          height: 32,
                                          alignment: Alignment.center,
                                          child: const Text('1'),
                                        ),
                                        InkWell(
                                          onTap: () => {},
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.black12,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                            ),
                                            width: 35,
                                            height: 32,
                                            alignment: Alignment.center,
                                            child: const Icon(
                                              Icons.add,
                                              size: 18,
                                              color: GlobalVariables.primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,child: Text('Product Rating'),),
                      const Expanded(
                          child: Placeholder(
                        child: Text('Product Description'),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
           Container(
            width: double.infinity,
            padding: const EdgeInsets.only(right : 14,left: 14,bottom: 15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(isPass: false),
                SizedBox(width: 5,),
                Expanded(child: CustomButton(isPass: true)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
