import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/provider/search_provider.dart';

class Searchscreen extends ConsumerStatefulWidget {
  const Searchscreen({super.key});

  @override
  ConsumerState<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends ConsumerState<Searchscreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    ref.read(searchQueryProvider.notifier).state = _searchController.text;
  }

  void _clearSearch() {
    _searchController.clear();
    ref.read(searchQueryProvider.notifier).state = '';
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ref.watch(localizationProvider);
    final filteredPlants = ref.watch(filteredPlantsProvider);
    final searchQuery = ref.watch(searchQueryProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: localizations.hintTextSerch,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: searchQuery.isNotEmpty
                      ? IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: _clearSearch,
                        )
                      : null,
                ),
                autofocus: true,
              ),
            ),

            // Результаты поиска

            Expanded(
              child: _buildSearchResults(filteredPlants, searchQuery),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults(List<PostData> plants, String query) {
    if (query.isEmpty) {
      return Center(
        child: Text(
          'Введите название растения для поиска',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    if (plants.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'Растение не найдено',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Text(
              'Попробуйте другое название',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: plants.length,
      itemBuilder: (context, index) {
        final plant = plants[index];
        return _buildPlantCard(plant);
      },
    );
  }

  Widget _buildPlantCard(PostData plant) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(plant.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          plant.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(plant.name),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                plant.category,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green[700],
                ),
              ),
            ),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {

          // Переход странице 
          context.push('/cards/${plant.id}');
        },
      ),
    );
  }
}