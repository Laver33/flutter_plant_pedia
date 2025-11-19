import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/Widgets/plants_card.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/provider/plants_provider.dart';

class PlantsScreen extends ConsumerWidget {
  const PlantsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = ref.watch(localizationProvider);
    final cartItems = ref.watch(plantsProvider); // Следим за состоянием корзины

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[0]),
        actions: [
          // Кнопка очистки корзины
          if (cartItems.isNotEmpty)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                ref.read(plantsProvider.notifier).clearCart();
              },
            ),
        ],
      ),
      body: SafeArea(
        child: cartItems.isEmpty
            ? Center(
                child: Text(
                  'Ваша коллекция растений пуста',
                  style: TextStyle(fontSize: 18),
                ),
              )
            : GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.8, 
                ),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return PlantsCard(
                    plant: item.plant,
                    quantity: item.quantity,
                    onRemove: () {
                      ref.read(plantsProvider.notifier).removePlant(item.plant.id);
                    },
                  );
                },
              ),
      ),
    );
  }
}