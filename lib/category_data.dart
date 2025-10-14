

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
    title: 'Домашние', 
    id: 1,
    imagePath: 'lib/assets/Plantimg/Rose.png',
    ),

  CategoryData(
    title: 'Уличные', 
    id: 1,
    imagePath: 'lib/assets/Plantimg/Rose.png',
    ),

  CategoryData(
    title: 'Офисные', 
    id: 1,
    imagePath: 'lib/assets/Plantimg/Rose.png',
    ),

  CategoryData(
    title: 'Остальные', 
    id: 1,
    imagePath: 'lib/assets/Plantimg/Rose.png',
    ),
];