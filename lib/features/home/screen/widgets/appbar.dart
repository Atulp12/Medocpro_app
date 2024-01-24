import 'package:flutter/material.dart';
import 'package:medocpro_app/utils/global.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              flexibleSpace: Container(
                decoration:
                    const BoxDecoration(color: GlobalVariables.appBarColor),

              ),
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: size.width * 0.4, //200
                          height: size.height * 0.1, //60
                          child: Image.asset(
                            'assets/images/logo2.png',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ]),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(63),
                child: Container(
                  width: size.width * 0.89, //319
                  height: 43, //43
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: GlobalVariables.primaryColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // width: 239.4,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(11),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.2,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: GlobalVariables.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Icon(
                          Icons.search,
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
        
  }
}




















// SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: size.height * 0.223, //175
//                     clipBehavior: Clip.antiAlias,
//                     decoration: const ShapeDecoration(
//                       color: GlobalVariables.appBarColor,
//                       shape: RoundedRectangleBorder(
//                         // borderRadius: BorderRadius.only(
//                         //     bottomLeft: Radius.elliptical(90, 90),
//                         //     bottomRight: Radius.elliptical(90, 90)),
//                       ),
//                     ),
//                     child: SafeArea(
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 28,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(
//                                       Icons.notifications_none_outlined),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(Icons.shopping_cart_outlined),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             width: size.width * 0.2, //200
//                             height: size.height * 0.08, //60
//                             child: Image.asset(
//                               'assets/images/logo.png',
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 130,
//                     left: 20,
//                     child: Container(
//                       width: size.width * 0.89, //319
//                       height: 43, //43
//                       decoration: ShapeDecoration(
//                         color: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(
//                               width: 1, color: GlobalVariables.primaryColor),
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         shadows: const [
//                           // BoxShadow(
//                           //   color: GlobalVariables.appBarColor,
//                           //   blurRadius: 10,
//                           //   offset: Offset(0, 4),
//                           //   spreadRadius: 0,
//                           // )
//                         ],
//                       ),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               // width: 239.4,
//                               padding: const EdgeInsets.symmetric(horizontal: 8),
//                               child: const TextField(
//                                 decoration: InputDecoration(
//                                   hintText: 'Search...',
//                                   border: InputBorder.none,
//                                   contentPadding: EdgeInsets.all(11),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: size.width * 0.2,
//                             height: 41,
//                             decoration: ShapeDecoration(
//                               color: GlobalVariables.primaryColor,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                             ),
//                             child: const Icon(
//                               Icons.search,
//                               size: 26,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         );
