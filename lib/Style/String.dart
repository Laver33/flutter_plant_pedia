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

  // Для календаря ( статические )
  List<String> get calendarLeng => List<String>.from(texts['calendarLeng']!);

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

  // Данные для растений

  List<String> get plantsDesc => List<String>.from(texts['plantsDesc']!);
  
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
      'Подсолнух', 'Фиалка', 'Алоэ', 'Кактус',
      'Орхидея', 'Сансевиерия', 'Монстера', 'Герань', 'Хлорофитум',
      'Спатифиллум', 'Фикус', 'Замиокулькас', 'Бамбук', 'Сукулент'
    ],

    'category': ['Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная',
        'Уличная', 'Комнатная', 'Комнатная', 'Офисный',
        'Комнатная', 'Офисный', 'Комнатная', 'Комнатная', 'Офисный',
        'Комнатная', 'Комнатная', 'Офисный', 'Остальные', 'Комнатная'
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

    // Для календаря ( статические )

    'calendarLeng': [
      'Выбранный день: ',
      'Событие: ',
      'Выберите день для просмотра событий',
    ],

    // Данные для растений

    'plantsDesc':[
      'Королева цветов. Кустарник с шипастыми стеблями и ароматными махровыми цветками разнообразных оттенков.',
      'Полевой цветок с белыми лепестками и желтой сердцевиной. Широко используется в медицине и косметологии.',
      'Ажурный многолетник с облаком мелких белых цветков. Часто используется как дополнение в букетах.',
      'Весенний луковичный цветок с ярким бокаловидным бутоном. Символизирует приход весны.',
      'Крупный пышный цветок с множеством лепестков и насыщенным ароматом. Цветет в начале лета.',
      'Ароматный многолетний полукустарник с фиолетовыми колосовидными соцветиями. Любит солнце и сухую почву.',
      'Высокое растение с крупным желтым соцветием-корзинкой. Поворачивается за солнцем в течение дня.',
      'Нежное компактное растение с бархатистыми листьями и разноцветными мелкими цветками.',
      'Сукулент с мясистыми листьями, известный своими лечебными свойствами. Сок используется для заживления ран и ухода за кожей.',
      'Пустынное растение, запасающее воду в стебле. Колючки защищают его от животных. Цветет редко, но красиво.',
      'Элегантный комнатный цветок с воздушными корнями и продолжительным цветением. Требует особого ухода и влажности.',
      'Неприхотливое растение с жесткими мечевидными листьями. Отлично очищает воздух и выживает в любых условиях.',
      'Крупное тропическое растение с резными листьями. Любит рассеянный свет и регулярное опрыскивание.',
      'Популярное комнатное растение с ароматными листьями и яркими соцветиями. Обладает бактерицидными свойствами.',
      'Выносливое растение с длинными узкими листьями и побегами-усами. Эффективный природный очиститель воздуха.',
      'Изящное растение с темными листьями и белыми покрывалами цветков. Символизирует женское счастье.',
      'Древовидное растение с густой кроной из мелких листьев. Популярное украшение интерьеров и офисов.',
      'Современное офисное растение с глянцевыми темно-зелеными листьями. Очень выносливое и неприхотливое.',
      'Декоративное растение с прямыми стеблями, часто выращиваемое в воде. Символ удачи и процветания.',
      'Декоративное растение с мясистыми листьями, образующими розетку. Не требует частого полива и ухода.',
    ]

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
    'Sunflower', 'Violet', 'Aloe', 'Cactus',
    'Orchid', 'Sansevieria', 'Monstera', 'Geranium', 'Chlorophytum',
    'Spathiphyllum', 'Ficus', 'Zamioculcas', 'Bamboo', 'Succulent'
  ],

  'category': [
    'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor',
    'Outdoor', 'Indoor', 'Indoor', 'Office',
    'Indoor', 'Office', 'Indoor', 'Indoor', 'Office',
    'Indoor', 'Indoor', 'Office', 'Others', 'Indoor'
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

    // Для календаря ( статические )

    'calendarLeng': [
      'Curent day: ',
      'Event: ',
      'Select a day to view events',
    ],

    // Данные для растений

    'plantsDesc':[
      'The queen of flowers. A shrub with thorny stems and fragrant double flowers in various shades.',
      'A field flower with white petals and a yellow center. Widely used in medicine and cosmetology.',
      'A delicate perennial with a cloud of small white flowers. Often used as a filler in bouquets.',
      'A spring bulbous flower with a bright goblet-shaped bud. Symbolizes the arrival of spring.',
      'A large lush flower with numerous petals and a rich fragrance. Blooms in early summer.',
      'A fragrant perennial subshrub with purple spike-shaped inflorescences. Loves sun and dry soil.',
      'A tall plant with a large yellow composite flower head. Turns to follow the sun throughout the day.',
      'A delicate compact plant with velvety leaves and multi-colored small flowers.',
      'A succulent with fleshy leaves, known for its medicinal properties. The juice is used for wound healing and skin care.',
      'A desert plant that stores water in its stem. Spines protect it from animals. Blooms rarely but beautifully.',
      'An elegant indoor flower with aerial roots and long-lasting blooming. Requires special care and humidity.',
      'An unpretentious plant with stiff sword-shaped leaves. Excellent at purifying air and survives in any conditions.',
      'A large tropical plant with carved leaves. Prefers diffused light and regular misting.',
      'A popular houseplant with fragrant leaves and bright inflorescences. Has bactericidal properties.',
      'A hardy plant with long narrow leaves and runner shoots. An effective natural air purifier.',
      'A graceful plant with dark leaves and white flower spathes. Symbolizes female happiness.',
      'A tree-like plant with a dense crown of small leaves. A popular decoration for interiors and offices.',
      'A modern office plant with glossy dark green leaves. Very hardy and low-maintenance.',
      'A decorative plant with straight stems, often grown in water. A symbol of luck and prosperity.',
      'A decorative plant with fleshy leaves forming a rosette. Does not require frequent watering or care.',
    ],


  }),
};
