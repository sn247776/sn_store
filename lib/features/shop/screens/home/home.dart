import 'package:flutter/material.dart';
import 'package:sn_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sn_store/features/shop/screens/home/widgets/home_bar.dart';
import 'package:sn_store/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:sn_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            SnPrimaryHeaderContainer(
                child: Column(
              children: [
                ///Appbar
                SnHomeAppBar(),
                SizedBox(height: SnSizes.spaceBtwSections,),
                ///Searchbar
                SnSearchContainer(text: 'Search in Store'),
                SizedBox(height: SnSizes.spaceBtwSections,),
                ///Categories
              ],
            )),
          ],
        ),
      ),
    );
  }
}
