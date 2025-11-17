

import 'package:my_first_app/Style/AppAssets.dart';

class PostData {
  final String title;
  final String name;
  final String description;
  final int id;
  final String imagePath;
  final String category;

  
  PostData({
    required this.title, 
    required this.name, 
    required this.description, 
    required this.id, 
    required this.imagePath,
    required this.category
    });
}

final List<PostData> posts = [
  PostData(
    title: 'Роза', 
    name: 'Роза садовая',
    description: 'Королева цветов. Кустарник с шипастыми стеблями и ароматными махровыми цветками разнообразных оттенков.', 
    id: 1,
    imagePath: AppAssets.rose,
    category: 'Уличная'
  ),

  
  PostData(
    title: 'Ромашка', 
    name: 'Ромашка аптечная', 
    description: 'Полевой цветок с белыми лепестками и желтой сердцевиной. Широко используется в медицине и косметологии.', 
    id: 2,
    imagePath: AppAssets.chamomile,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Гипсофила', 
    name: 'Гипсофила метельчатая', 
    description: 'Ажурный многолетник с облаком мелких белых цветков. Часто используется как дополнение в букетах.', 
    id: 3,
    imagePath: AppAssets.breath,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Тюльпан', 
    name: 'Тюльпан', 
    description: 'Весенний луковичный цветок с ярким бокаловидным бутоном. Символизирует приход весны.', 
    id: 4,
    imagePath: AppAssets.tulip,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Пион', 
    name: 'Пион травянистый', 
    description: 'Крупный пышный цветок с множеством лепестков и насыщенным ароматом. Цветет в начале лета.', 
    id: 5,
    imagePath: AppAssets.peony,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Лаванда', 
    name: 'Лаванда узколистная', 
    description: 'Ароматный многолетний полукустарник с фиолетовыми колосовидными соцветиями. Любит солнце и сухую почву.', 
    id: 6,
    imagePath: AppAssets.lavender,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Подсолнух', 
    name: 'Подсолнечник однолетний', 
    description: 'Высокое растение с крупным желтым соцветием-корзинкой. Поворачивается за солнцем в течение дня.', 
    id: 7,
    imagePath: AppAssets.sunflower,
    category: 'Уличная'
  ),
  
  PostData(
    title: 'Фиалка', 
    name: 'Сенполия (Узамбарская фиалка)', 
    description: 'Нежное компактное растение с бархатистыми листьями и разноцветными мелкими цветками.', 
    id: 8,
    imagePath: AppAssets.violet,
    category: 'Комнатная'
  ),
  
  PostData(
    title: 'Алоэ', 
    name: 'Алоэ Вера', 
    description: 'Сукулент с мясистыми листьями, известный своими лечебными свойствами. Сок используется для заживления ран и ухода за кожей.', 
    id: 9,
    imagePath: AppAssets.aloe,
    category: 'Комнатная'
  ),
  
  PostData(
    title: 'Кактус', 
    name: 'Кактус', 
    description: 'Пустынное растение, запасающее воду в стебле. Колючки защищают его от животных. Цветет редко, но красиво.', 
    id: 10,
    imagePath: AppAssets.cactus,
    category: 'Офисный'
  ),


  PostData(
    title: 'Орхидея', 
    name: 'Фаленопсис',
    description: 'Элегантный комнатный цветок с воздушными корнями и продолжительным цветением. Требует особого ухода и влажности.', 
    id: 11,
    imagePath: AppAssets.orchid,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Сансевиерия', 
    name: 'Сансевиерия трехполосная',
    description: 'Неприхотливое растение с жесткими мечевидными листьями. Отлично очищает воздух и выживает в любых условиях.', 
    id: 12,
    imagePath: AppAssets.sansevieria,
    category: 'Офисный'
  ),

  PostData(
    title: 'Монстера', 
    name: 'Монстера деликатесная',
    description: 'Крупное тропическое растение с резными листьями. Любит рассеянный свет и регулярное опрыскивание.', 
    id: 13,
    imagePath: AppAssets.monstera,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Герань', 
    name: 'Пеларгония',
    description: 'Популярное комнатное растение с ароматными листьями и яркими соцветиями. Обладает бактерицидными свойствами.', 
    id: 14,
    imagePath: AppAssets.geranium,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Хлорофитум', 
    name: 'Хлорофитум хохлатый',
    description: 'Выносливое растение с длинными узкими листьями и побегами-усами. Эффективный природный очиститель воздуха.', 
    id: 15,
    imagePath: AppAssets.chlorophytum,
    category: 'Офисный'
  ),

  PostData(
    title: 'Спатифиллум', 
    name: 'Спатифиллум Уоллиса',
    description: 'Изящное растение с темными листьями и белыми покрывалами цветков. Символизирует женское счастье.', 
    id: 16,
    imagePath: AppAssets.spathiphyllum,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Фикус', 
    name: 'Фикус Бенджамина',
    description: 'Древовидное растение с густой кроной из мелких листьев. Популярное украшение интерьеров и офисов.', 
    id: 17,
    imagePath: AppAssets.ficus,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Замиокулькас', 
    name: 'Замиокулькас замиелистный',
    description: 'Современное офисное растение с глянцевыми темно-зелеными листьями. Очень выносливое и неприхотливое.', 
    id: 18,
    imagePath: AppAssets.zamioculcas,
    category: 'Офисный'
  ),

  PostData(
    title: 'Бамбук', 
    name: 'Драцена Сандера',
    description: 'Декоративное растение с прямыми стеблями, часто выращиваемое в воде. Символ удачи и процветания.', 
    id: 19,
    imagePath: AppAssets.bamboo,
    category: 'Остальные'
  ),

  PostData(
    title: 'Сукулент', 
    name: 'Эхеверия',
    description: 'Декоративное растение с мясистыми листьями, образующими розетку. Не требует частого полива и ухода.', 
    id: 20,
    imagePath: AppAssets.succulent,
    category: 'Комнатная'
  ),
];