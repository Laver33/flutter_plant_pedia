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
  String get buttonCard => texts['buttonCard']!;

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

  // Настройки

  String get warningTitle => texts['warningTitle']!;
  String get appWarningText => texts ['appWarningText']!;

  // Растения карточка

  List<String> get plantsCardText => List <String>.from(texts['plantsCardText']!);
  
}

final localizationMap = {
  'ru': AppLocalizations({

    // Растения карточка

    'plantsCardText': [
      'Количество: ', 'Удалить'
    ],

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

    // Кнопка для карт цветов

    'buttonCard': 'Добавить растение',

    // Популярное

    'postsTitle': [
        'Роза', 'Ромашка', 'Гипсофила', 'Тюльпан', 'Пион', 'Лаванда', 
        'Подсолнух', 'Фиалка', 'Алоэ', 'Кактус',
        'Орхидея', 'Сансевиерия', 'Монстера', 'Герань', 'Хлорофитум',
        'Спатифиллум', 'Фикус', 'Замиокулькас', 'Бамбук', 'Сукулент',

        'Гортензия', 'Ирис', 'Нарцисс', 'Ландыш', 'Сиренень',
        'Жасмин', 'Мята', 'Базилик', 'Петуния', 'Бегония',
        'Азалия', 'Антуриум', 'Каланхоэ', 'Толстянка', 'Драцена',
        'Аглаонема', 'Гиппеаструм', 'Папоротник', 'Плющ', 'Эвкалипт'
    ],

    'category': [
        'Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная',
        'Уличная', 'Комнатная', 'Комнатная', 'Офисный',
        'Комнатная', 'Офисный', 'Комнатная', 'Комнатная', 'Офисный',
        'Комнатная', 'Комнатная', 'Офисный', 'Остальные', 'Комнатная',

        'Уличная', 'Уличная', 'Уличная', 'Уличная', 'Уличная',
        'Комнатная', 'Огород', 'Огород', 'Уличная', 'Комнатная',
        'Комнатная', 'Комнатная', 'Комнатная', 'Комнатная', 'Офисный',
        'Комнатная', 'Комнатная', 'Комнатная', 'Комнатная', 'Остальные'
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

    'plantsDesc': [
        'Королева цветов. Кустарник с шипастыми стеблями и ароматными махровыми цветками разнообразных оттенков.',
        'Полевой цветок с белыми лепестками и желтой сердцевиной. Широко используется в медицине и косметологии.',
        'Ажурный многолетник с облаком мелких белых цветок. Часто используется как дополнение в букетах.',
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

        'Кустарник с крупными шаровидными соцветиями, меняющими цвет в зависимости от кислотности почвы. Любит влагу.',
        'Изящный цветок с мечевидными листьями и сложными соцветиями. Символизирует мудрость и доверие.',
        'Весенний луковичный первоцвет с желтыми или белыми цветками и длинным венчиком. Символ новой жизни.',
        'Нежный многолетник с душистыми белыми колокольчиками. Ядовит, но широко используется в парфюмерии.',
        'Крупный кустарник с душистыми метельчатыми соцветиями лилового или белого цвета. Символ весны.',
        'Вьющееся растение с ароматными белыми цветками. Широко используется для приготовления чая и в парфюмерии.',
        'Ароматная трава с освежающим запахом. Широко используется в кулинарии, медицине и для приготовления напитков.',
        'Пряная трава с насыщенным ароматом. Популярная приправа в кухнях средиземноморья и Азии.',
        'Яркий однолетний цветок с воронкообразными соцветиями. Обильно цветет все лето, украшая клумбы и балконы.',
        'Декоративное растение с асимметричными листьями и пышными соцветиями. Ценится за разнообразие форм и расцветок.',
        'Красивоцветущий кустарник с яркими цветками. Требует прохладных условий и повышенной влажности воздуха.',
        'Эффектное растение с глянцевыми листьями и яркими цветками-покрывалами. Символизирует мужское счастье.',
        'Лекарственный сукулент с мясистыми листьями. Сок обладает противовоспалительными и ранозаживляющими свойствами.',
        'Популярный сукулент с толстыми листьями, напоминающими монетки. В народе называется "денежное дерево".',
        'Растение с одревесневшим стеблем и пучком листьев на верхушке. Эффектно выглядит и очищает воздух.',
        'Декоративно-лиственное растение с узорчатыми листьями. Теневыносливо и неприхотливо в уходе.',
        'Красивоцветущее луковичное растение с крупными звездчатыми цветками на высоком цветоносе.',
        'Тенелюбивое растение с ажурными перистыми листьями (вайями). Любит влажность и прохладу.',
        'Вьющееся растение с длинными побегами и звездчатыми листьями. Используется для вертикального озеленения.',
        'Дерево с ароматными сизыми листьями, содержащими эфирные масла. Используется в медицине и ароматерапии.'
    ],

    // Настройки

    'warningTitle': 'Внимание',
    'appWarningText': 'Учебный проект: данное приложение разработано для демонстрации навыков программирования. Функциональность может быть ограничена.'

  }),
  
  'en': AppLocalizations({

    // Растения карточка

    'plantsCardText': [
      'Quantity: ', 'Delete'
    ],

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

    // Кнопка для карт цветов

    'buttonCard': 'Add plant', 

    // Популярные

    'postsTitle': [
    'Rose', 'Chamomile', 'Gypsophila', 'Tulip', 'Peony', 'Lavender',
    'Sunflower', 'Violet', 'Aloe', 'Cactus',
    'Orchid', 'Sansevieria', 'Monstera', 'Geranium', 'Chlorophytum',
    'Spathiphyllum', 'Ficus', 'Zamioculcas', 'Bamboo', 'Succulent',

    'Hydrangea', 'Iris', 'Narcissus', 'Lily of the Valley', 'Lilac',
    'Jasmine', 'Mint', 'Basil', 'Petunia', 'Begonia',
    'Azalea', 'Anthurium', 'Kalanchoe', 'Crassula', 'Dracaena',
    'Aglaonema', 'Hippeastrum', 'Fern', 'Ivy', 'Eucalyptus'
    ],

    'category': [
    'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor', 'Outdoor',
    'Outdoor', 'Indoor', 'Office',
    'Indoor', 'Office', 'Indoor', 'Indoor', 'Office',
    'Indoor', 'Indoor', 'Office', 'Other', 'Indoor',

    'Street', 'Street', 'Street', 'Street', 'Street',
    'Indoor', 'Other', 'Other', 'Street', 'Indoor',
    'Indoor', 'Indoor', 'Indoor', 'Indoor', 'Office',
    'Indoor', 'Indoor', 'Indoor', 'Indoor', 'Indoor', 'Other'
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

    // Настройки

    'warningTitle': 'Warning',
    'appWarningText': 'Educational project: this application was developed to demonstrate programming skills. Functionality may be limited.'


  }),
};
