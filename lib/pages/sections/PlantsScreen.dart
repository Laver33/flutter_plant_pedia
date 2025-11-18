import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/Widgets/plants_card.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/main.dart';

class PlantsScreen extends ConsumerStatefulWidget {
  const PlantsScreen({super.key});

  @override
  ConsumerState<PlantsScreen> createState() => _PlantsScreenState();
}

class CartItem {
  final PostData plant;
  int quantity;
  
  CartItem({required this.plant, this.quantity = 1});
}

class _PlantsScreenState extends ConsumerState<PlantsScreen> {
  get cartItems => null;

  
  
  @override
  Widget build(BuildContext context) {

    

    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[0]),
      ),

      body: SafeArea(
        
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15, 
            mainAxisSpacing: 5, 
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return PlantsCard();
          },)
      ),
    );
  }
}