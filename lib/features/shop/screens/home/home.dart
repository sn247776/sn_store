import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:sn_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: SnColors.primary,
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(top: -150, right: -250, child: SnCircularContainer(backgroundColor: SnColors.textWhite.withOpacity(0.1),),),
                    Positioned(top: 100, right: -300, child: SnCircularContainer(backgroundColor: SnColors.textWhite.withOpacity(0.1),),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


