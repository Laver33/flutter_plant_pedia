import 'package:flutter/material.dart';
import 'package:my_first_app/data/post_data.dart';

class PlantsCard extends StatelessWidget {
  final PostData plant;
  final int quantity;
  final VoidCallback onRemove;

  const PlantsCard({
    super.key,
    required this.plant,
    required this.quantity,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              plant.imagePath,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plant.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Количество: $quantity',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: onRemove,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 30),
                    ),
                    child: Text('Удалить'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}