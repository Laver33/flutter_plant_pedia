class AppLocalizations {
  final Map<String, dynamic> texts;

  AppLocalizations(this.texts);

  String get popularPlants => texts['popularPlants']!;
  String get plantCategory => texts['plantCategory']!;
  String get appName => texts['appName']!;
  String get appNameFirst => texts['appNameFirst']!;
  String get appNameEnd => texts['appNameEnd']!;
  String get descript1 => texts['descript1']!;
  String get static => texts['static']!;
  String get hintTextSerch => texts['hintTextSerch']!;
  String get sections => texts['sections']!;

  // Категория растений

  List<String> get categotyTitles => List<String>.from(texts['categotyTitles']!);

  // Популярные

  List<String> get postsTitle => List<String>.from(texts['postsTitle']!);
  List<String> get category => List<String>.from(texts['category']!);

  // Карты популярные

  List<String> get cardTitles => List<String>.from(texts['cardTitles']!);

  // Остальные

  List<String> get navbottonbarTitles => List<String>.from(texts['navbottonbarTitles']!);
  List<String> get statisticTitles => List<String>.from(texts['statisticTitles']!);
  List<String> get sectionsTitles => List<String>.from(texts['sectionsTitles']!);
  List<String> get settingsTitles => List<String>.from(texts['settingsTitles']!);
  List<String> get switchText1 => List<String>.from(texts['switchText1']!);
  List<String> get switchText2 => List<String>.from(texts['switchText2']!);

  
}

final localizationMap = {
  'ru': AppLocalizations({

    'popularPlants': 'Популярные',
    'plantCategory': 'Категории растений',
    'appName': 'PlantPedia',
    'appNameFirst': 'Plant',
    'appNameEnd': 'Pedia',
    'descript1': 'Заботься о растениях с умом',
    'static': 'Статистика',
    'hintTextSerch': 'Введите название растения',
    'sections': 'Разделы',

    // Категории растений

    'categotyTitles': ['Уличные', 'Комнатные', 'Офисные', 'Остальные'],

    // Популярное

    'postsTitle': [
      'Роза', 'Ромашка', 'Гипсофила', 'Тюльпан', 'Пион', 'Лаванда', 
      'Подсолнух', 'Фиалка', 'Алоэ', 'Кактус'
      ],

    'category': ['Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная',
      'Уличная', 'Комнатная', 'Комнатная', 'Офисный'
      ],

    // Карты популярное

    'cardTitles': [
      'Описание', 'Категория', 'Сколько нужно поливов в день', 'Особенности'
    ],


    // Остальное

    'navbottonbarTitles': ['Профиль', 'Главная', 'Поиск'],
    'statisticTitles': ['Растения', 'Растения', 'Записей'],
    'sectionsTitles': ['Мои растения', 'Календарь', 'Блокнот', 'Настройки'],
    'settingsTitles': ['Переключения языка', 'Переключение стиля'],
    'switchText1': ['Анг', 'Руск'],
    'switchText2': ['Ночь', 'День'],
  }),
  
  'en': AppLocalizations({

    'popularPlants': 'Popular',
    'plantCategory': 'Plant Categories', 
    'appName': 'PlantPedia',
    'appNameFirst': 'Plant',
    'appNameEnd': 'Pedia',
    'descript1': 'Take care of plants wisely',
    'static': 'Statistics',
    'hintTextSerch': 'Enter plant name',
    'sections': 'Sections',

    // Категория растений

    'categotyTitles': ['Outdoor', 'Indoor', 'Office', 'Other'],   

    // Популярные

    'postsTitle': [
      'Rose', 'Chamomile', 'Gypsophila', 'Tulip', 'Peony', 'Lavender',
      'Sunflower', 'Violet', 'Aloe', 'Cactus'
    ],

    'category': ['Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor',
      'Outdoor', 'Indoor', 'Indoor', 'Office'
    ],

    // Карты популярное

    'cardTitles': [
      'Description', 'Category', 'How many waterings per day are needed', 'Features'
    ],

    // Остальное
    
    'navbottonbarTitles': ['Profile', 'Main', 'Search'],
    'statisticTitles': ['Plants', 'Plants', 'Posts'],
    'sectionsTitles': ['My Plants', 'Calendar', 'Notebook', 'Settings'],
    'settingsTitles': ['Language switching', 'Style switching'],
    'switchText1': ['Eng', 'Rus'],
    'switchText2': ['Night', 'Day'],
  }),
};
