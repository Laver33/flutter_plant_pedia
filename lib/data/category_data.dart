

class CategoryData {
  final String title;
  final int id;
  final String imagePath;

  
  CategoryData({
    required this.title, 
    required this.id, 
    required this.imagePath
    });
}

final List<CategoryData> categoryes = [

  CategoryData(
    title: 'Уличные', 
    id: 1,
    imagePath: 'lib/assets/Categoryimg/Outdoor.png',
    ),

  CategoryData(
    title: 'Комнатные', 
    id: 2,
    imagePath: 'lib/assets/Categoryimg/Room.png',
    ),

  CategoryData(
    title: 'Офисные', 
    id: 3,
    imagePath: 'lib/assets/Categoryimg/Office.png',
    ),

  CategoryData(
    title: 'Остальные', 
    id: 4,
    imagePath: 'lib/assets/Categoryimg/Other.png',
    ),
];