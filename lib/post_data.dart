

class PostData {
  final String title;
  final String name;
  final String description;
  final int id;
  final String imagePath;

  
  PostData({
    required this.title, 
    required this.name, 
    required this.description, 
    required this.id, 
    required this.imagePath
    });
}

final List<PostData> posts = [
  PostData(
    title: 'Роза', 
    name: 'Роза садовая',
    description: 'Королева цветов. Кустарник с шипастыми стеблями и ароматными махровыми цветками разнообразных оттенков.', 
    id: 1,
    imagePath: 'lib/assets/Plantimg/Rose.png',
    ),

  
  PostData(
    title: 'Ромашка', 
    name: 'Ромашка аптечная', 
    description: 'Полевой цветок с белыми лепестками и желтой сердцевиной. Широко используется в медицине и косметологии.', 
    id: 2,
    imagePath: 'lib/assets/Plantimg/Chamomile.png',
    ),
  
  PostData(
    title: 'Гипсофила', 
    name: 'Гипсофила метельчатая', 
    description: 'Ажурный многолетник с облаком мелких белых цветков. Часто используется как дополнение в букетах.', 
    id: 3,
    imagePath: 'lib/assets/Plantimg/Breath.png',
    ),
  
  PostData(
    title: 'Тюльпан', 
    name: 'Тюльпан', 
    description: 'Весенний луковичный цветок с ярким бокаловидным бутоном. Символизирует приход весны.', 
    id: 4,
    imagePath: 'lib/assets/Plantimg/Tulip.png',
    ),
  
  PostData(
    title: 'Пион', 
    name: 'Пион травянистый', 
    description: 'Крупный пышный цветок с множеством лепестков и насыщенным ароматом. Цветет в начале лета.', 
    id: 5,
    imagePath: 'lib/assets/Plantimg/Peony.png',
    ),
  
  PostData(
    title: 'Лаванда', 
    name: 'Лаванда узколистная', 
    description: 'Ароматный многолетний полукустарник с фиолетовыми колосовидными соцветиями. Любит солнце и сухую почву.', 
    id: 6,
    imagePath: 'lib/assets/Plantimg/Lavender.png',
    ),
  
  PostData(
    title: 'Подсолнух', 
    name: 'Подсолнечник однолетний', 
    description: 'Высокое растение с крупным желтым соцветием-корзинкой. Поворачивается за солнцем в течение дня.', 
    id: 7,
    imagePath: 'lib/assets/Plantimg/Sunflower.png',
    ),
  
  PostData(
    title: 'Фиалка', 
    name: 'Сенполия (Узамбарская фиалка)', 
    description: 'Нежное компактное растение с бархатистыми листьями и разноцветными мелкими цветками.', 
    id: 8,
    imagePath: 'lib/assets/Plantimg/Violet.png',
    ),
  
  PostData(
    title: 'Алоэ', 
    name: 'Алоэ Вера', 
    description: 'Сукулент с мясистыми листьями, известный своими лечебными свойствами. Сок используется для заживления ран и ухода за кожей.', 
    id: 9,
    imagePath: 'lib/assets/Plantimg/Aloe.png',
    ),
  
  PostData(
    title: 'Кактус', 
    name: 'Кактус', 
    description: 'Пустынное растение, запасающее воду в стебле. Колючки защищают его от животных. Цветет редко, но красиво.', 
    id: 10,
    imagePath: 'lib/assets/Plantimg/Cactus.png',
    ),
];