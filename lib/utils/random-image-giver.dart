import 'dart:math';
import 'dart:ui';

import 'package:fidibo_project/constants.dart';

class RandomImageGiver {
  List<String> images = [
    'https://civil808.com/sites/default/files/field/image/node_13757_1.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_0.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_1.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_3.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_2.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_5.jpg',
    'https://civil808.com/sites/default/files/field/image/node_13757_4.jpg',
    'https://veronikaa.ru/wp-content/uploads/2019/09/s1200-10.jpg',
    'https://imperialspb.ru/storage/tours/November2019/IRSAlt1h8tKy8be2tXut.jpg'
    'https://delfa.com.ua/images/fotogalerei_stran/netherlands/zima/10.jpg',
    'https://dogipediya.ru/wp-content/uploads/2018/11/aussi5.jpg'


  ];
  List<Color> colors = [
  Constants.COLOR_LIGHT_GRAY,
  Constants.COLOR_WHITE_MAIN ,
  Constants.COLOR_RED_ERROR ,
  Constants.COLOR_BACKGROUND,
  Constants.COLOR_BLUE,
  Constants.COLOR_GREEN,
  Constants.COLOR_PINK


  ];
  static RandomImageGiver? Instance;

  static void Init() {
    Instance = RandomImageGiver();
  }

  String GiffRandomImage() {

    var random =  Random();
    String element = images[random.nextInt(images.length)];
    return element;
  }
  Color GiffRandomColor() {

    var random =  Random();
    Color element = colors[random.nextInt(colors.length)];
    return element;
  }
}
