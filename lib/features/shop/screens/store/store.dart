import 'package:flutter/material.dart';
import 'package:sn_store/common/products/cart/cart_menu_icon.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SnAppBar(
        title: Text('Store'),
        actions: [
          SnCartCounterIcon(onPressed: (){})
        ],
      ),
    );
  }
}
