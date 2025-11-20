import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/main.dart';

class PlantsCard extends ConsumerStatefulWidget {
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
  ConsumerState<PlantsCard> createState() => _PlantsCardState();
}

class _PlantsCardState extends ConsumerState<PlantsCard> {
  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);

    return Card(
      elevation: 3,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              widget.plant.imagePath,
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
                    widget.plant.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  RichText(
                    text: TextSpan(
                      children: [
                      TextSpan(
                        text: localizations.plantsCardText[0],
                      ),
                      TextSpan(
                        text: '${widget.quantity}')
                      ], style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,),)
                      ),

                  ElevatedButton(
                    onPressed: widget.onRemove,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 30),
                    ),
                    child: Text(localizations.plantsCardText[1]),
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