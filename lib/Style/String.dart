class AppLocalizations {
  final Map<String, dynamic> texts;

  AppLocalizations(this.texts);

  // Для простых строк - геттеры
  String get popularPlants => texts['popularPlants']!;
  String get plantCategory => texts['plantCategory']!;
  String get appName => texts['appName']!;
  String get appNameFirst => texts['appNameFirst']!;
  String get appNameEnd => texts['appNameEnd']!;
  String get descript1 => texts['descript1']!;
  String get static => texts['static']!;

  // Для списков - тоже геттеры, но возвращают List<String>
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
    

    'sectionsTitles': ['Мои растения', 'Календарь', 'Блокнот', 'Настройки'],
    'settingsTitles': ['Переключения языка', 'Переключение стиля'],
    'switchText1': ['Анг', 'Руск'],
    'switchText2': ['Ночь', 'День'],
  }),
  
  'en': AppLocalizations({
    // Простые строки
    'popularPlants': 'Popular',
    'plantCategory': 'Plant Categories', 
    'appName': 'PlantPedia',
    'appNameFirst': 'Plant',
    'appNameEnd': 'Pedia',
    'descript1': 'Take care of plants wisely',
    'static': 'Statistics',
    
    // Списки
    'sectionsTitles': ['My Plants', 'Calendar', 'Notebook', 'Settings'],
    'settingsTitles': ['Language switching', 'Style switching'],
    'switchText1': ['Eng', 'Rus'],
    'switchText2': ['Night', 'Day'],
  }),
};
