import 'package:my_first_app/data/post_data.dart';

class CartItem {
  final PostData plant;
  int quantity;
  
  CartItem({required this.plant, this.quantity = 1});
  
  void increaseQuantity() {
    quantity++;
  }
  
  CartItem copyWith({int? quantity}) {
    return CartItem(
      plant: plant,
      quantity: quantity ?? this.quantity,
    );
  }
}