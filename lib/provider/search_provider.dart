import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:my_first_app/data/post_data.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final filteredPlantsProvider = Provider<List<PostData>>((ref) {
  final searchQuery = ref.watch(searchQueryProvider);
  final query = searchQuery.toLowerCase().trim();
  
  if (query.isEmpty) {
    return []; 
  }
  
  return posts.where((plant) {
    return plant.title.toLowerCase().contains(query) ||
           plant.name.toLowerCase().contains(query) ||
           plant.category.toLowerCase().contains(query);
  }).toList();
});