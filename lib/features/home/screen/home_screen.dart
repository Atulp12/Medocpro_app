import 'package:flutter/material.dart';
import 'package:medocpro_app/features/home/screen/widgets/appbar.dart';
import 'package:medocpro_app/features/home/screen/widgets/best_container.dart';
import 'package:medocpro_app/features/home/widgets/category_column.dart';
import 'package:medocpro_app/features/home/widgets/category_container.dart';
import 'package:medocpro_app/features/home/widgets/crousel_image.dart';
import 'package:medocpro_app/features/home/screen/widgets/new_arrival.dart';
import 'package:medocpro_app/features/home/screen/widgets/refer_earn.dart';
import 'package:medocpro_app/features/home/screen/widgets/top_brand.dart';
import 'package:medocpro_app/utils/global.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, f) {
          return [
           const AppBar1()
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
             _generalCategory,
              const SizedBox(
                height: 10,
              ),
              const BestContainer(
                text: 'Best Deals',
                isOffer: true,
              ),
              const TopBrands(),
              const SizedBox(
                height: 10,
              ),
              const CarouselImage(),
              _topCategory,
              const SizedBox(
                height: 10,
              ),
              const BestContainer(text: 'Best Sellers', isOffer: false),
              const NewArrival(),
              const ReferEarn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget get _generalCategory => SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColumnCategory(
                      text: 'Medicine',
                      icon: Icons.medication_liquid_rounded,
                      function: () {},
                    ),
                    ColumnCategory(
                      text: 'Wellness',
                      icon: Icons.favorite_border_outlined,
                      function: () {},
                    ),
                    ColumnCategory(
                      text: 'Doctor..',
                      icon: Icons.medical_services_outlined,
                      function: () {},
                    ),
                    ColumnCategory(
                      text: 'Health..',
                      icon: Icons.monitor_heart_outlined,
                      function: () {},
                    ),
                  ],
                ),
              );




  Widget get _topCategory => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                    child: const Text(
                  'See all',
                  style: TextStyle(color: GlobalVariables.primaryColor),
                ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
                child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CategoryContainer(),
                SizedBox(
                  width: 20,
                ),
                CategoryContainer(),
              ],
            )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: SizedBox(
                child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                CategoryContainer(),
                SizedBox(
                  width: 20,
                ),
                CategoryContainer(),
              ],
            )),
          ),
        ],
      );
}
