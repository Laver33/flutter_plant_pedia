

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

  PostData(
    title: 'Гортензия', 
    name: 'Гортензия крупнолистная',
    description: 'Кустарник с крупными шаровидными соцветиями, меняющими цвет в зависимости от кислотности почвы. Любит влагу.', 
    id: 21,
    imagePath: AppAssets.hydrangea,
    category: 'Уличная'
  ),

  PostData(
    title: 'Ирис', 
    name: 'Ирис германский',
    description: 'Изящный цветок с мечевидными листьями и сложными соцветиями. Символизирует мудрость и доверие.', 
    id: 22,
    imagePath: AppAssets.iris,
    category: 'Уличная'
  ),

  PostData(
    title: 'Нарцисс', 
    name: 'Нарцисс поэтический',
    description: 'Весенний луковичный первоцвет с желтыми или белыми цветками и длинным венчиком. Символ новой жизни.', 
    id: 23,
    imagePath: AppAssets.daffodil,
    category: 'Уличная'
  ),

  PostData(
    title: 'Ландыш', 
    name: 'Ландыш майский',
    description: 'Нежный многолетник с душистыми белыми колокольчиками. Ядовит, но широко используется в парфюмерии.', 
    id: 24,
    imagePath: AppAssets.lilyOfTheValley,
    category: 'Уличная'
  ),

  PostData(
    title: 'Сиренень', 
    name: 'Сирень обыкновенная',
    description: 'Крупный кустарник с душистыми метельчатыми соцветиями лилового или белого цвета. Символ весны.', 
    id: 25,
    imagePath: AppAssets.lilac,
    category: 'Уличная'
  ),

  PostData(
    title: 'Жасмин', 
    name: 'Жасмин самбак',
    description: 'Вьющееся растение с ароматными белыми цветками. Широко используется для приготовления чая и в парфюмерии.', 
    id: 26,
    imagePath: AppAssets.jasmine,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Мята', 
    name: 'Мята перечная',
    description: 'Ароматная трава с освежающим запахом. Широко используется в кулинарии, медицине и для приготовления напитков.', 
    id: 27,
    imagePath: AppAssets.mint,
    category: 'Огород'
  ),

  PostData(
    title: 'Базилик', 
    name: 'Базилик душистый',
    description: 'Пряная трава с насыщенным ароматом. Популярная приправа в кухнях средиземноморья и Азии.', 
    id: 28,
    imagePath: AppAssets.basil,
    category: 'Огород'
  ),

  PostData(
    title: 'Петуния', 
    name: 'Петуния гибридная',
    description: 'Яркий однолетний цветок с воронкообразными соцветиями. Обильно цветет все лето, украшая клумбы и балконы.', 
    id: 29,
    imagePath: AppAssets.petunia,
    category: 'Уличная'
  ),

  PostData(
    title: 'Бегония', 
    name: 'Бегония вечноцветущая',
    description: 'Декоративное растение с асимметричными листьями и пышными соцветиями. Ценится за разнообразие форм и расцветок.', 
    id: 30,
    imagePath: AppAssets.begonia,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Азалия', 
    name: 'Азалия индийская',
    description: 'Красивоцветущий кустарник с яркими цветками. Требует прохладных условий и повышенной влажности воздуха.', 
    id: 31,
    imagePath: AppAssets.azalea,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Антуриум', 
    name: 'Антуриум Андре',
    description: 'Эффектное растение с глянцевыми листьями и яркими цветками-покрывалами. Символизирует мужское счастье.', 
    id: 32,
    imagePath: AppAssets.anthurium,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Каланхоэ', 
    name: 'Каланхоэ Дегремона',
    description: 'Лекарственный сукулент с мясистыми листьями. Сок обладает противовоспалительными и ранозаживляющими свойствами.', 
    id: 33,
    imagePath: AppAssets.kalanchoe,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Толстянка', 
    name: 'Толстянка яйцевидная',
    description: 'Популярный сукулент с толстыми листьями, напоминающими монетки. В народе называется "денежное дерево".', 
    id: 34,
    imagePath: AppAssets.crassula,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Драцена', 
    name: 'Драцена маргината',
    description: 'Растение с одревесневшим стеблем и пучком листьев на верхушке. Эффектно выглядит и очищает воздух.', 
    id: 35,
    imagePath: AppAssets.dracaena,
    category: 'Офисный'
  ),

  PostData(
    title: 'Аглаонема', 
    name: 'Аглаонема переменчивая',
    description: 'Декоративно-лиственное растение с узорчатыми листьями. Теневыносливо и неприхотливо в уходе.', 
    id: 36,
    imagePath: AppAssets.aglaonema,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Гиппеаструм', 
    name: 'Гиппеаструм гибридный',
    description: 'Красивоцветущее луковичное растение с крупными звездчатыми цветками на высоком цветоносе.', 
    id: 37,
    imagePath: AppAssets.hippeastrum,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Папоротник', 
    name: 'Нефролепис возвышенный',
    description: 'Тенелюбивое растение с ажурными перистыми листьями (вайями). Любит влажность и прохладу.', 
    id: 38,
    imagePath: AppAssets.fern,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Плющ', 
    name: 'Плющ обыкновенный',
    description: 'Вьющееся растение с длинными побегами и звездчатыми листьями. Используется для вертикального озеленения.', 
    id: 39,
    imagePath: AppAssets.ivy,
    category: 'Комнатная'
  ),

  PostData(
    title: 'Эвкалипт', 
    name: 'Эвкалипт шаровидный',
    description: 'Дерево с ароматными сизыми листьями, содержащими эфирные масла. Используется в медицине и ароматерапии.', 
    id: 40,
    imagePath: AppAssets.eucalyptus,
    category: 'Остальные'
  ),
];