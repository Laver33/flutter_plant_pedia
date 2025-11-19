import 'package:flutter_riverpod/legacy.dart';
import 'package:my_first_app/data/post_data.dart';

class CartItem {
  final PostData plant;
  int quantity;
  
  CartItem({required this.plant, this.quantity = 1});
}

final plantsProvider = StateNotifierProvider<PlantsNotifier, List<CartItem>>((ref) {
  return PlantsNotifier();
});

class PlantsNotifier extends StateNotifier<List<CartItem>> {
  PlantsNotifier() : super([]);

  void addPlant(PostData plant) {
    final index = state.indexWhere((item) => item.plant.id == plant.id);
    
    if (index != -1) {
      state = [
        for (final item in state)
          if (item.plant.id == plant.id)
            CartItem(plant: item.plant, quantity: item.quantity + 1)
          else
            item
      ];
    } else {
      state = [...state, CartItem(plant: plant)];
    }
  }

  void removePlant(int plantId) {
    state = state.where((item) => item.plant.id != plantId).toList();
  }

  void clearCart() {
    state = [];
  }
}