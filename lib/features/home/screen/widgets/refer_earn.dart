import 'package:flutter/material.dart';
import 'package:medocpro_app/utils/global.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Refer and Earn',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.16,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: GlobalVariables.appBarColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Invite family and friends to earn\ncashback'),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(size.width * 0.4, 35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: GlobalVariables.primaryColor,
                            foregroundColor: GlobalVariables.whiteColor,
                            elevation: 5),
                        child: const Text('Invite'),
                      ),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}