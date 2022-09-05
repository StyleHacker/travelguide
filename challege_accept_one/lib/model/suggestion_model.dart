import 'suggestion_model_activity.dart';

class Hotel {
  String imageUrl;
  String name;
  String description;
  String duration;
  String route;
  String image;

  Hotel(
      {this.imageUrl,
      this.name,
      this.description,
      this.duration,
      this.route,
      this.image});
}

List<Activityy> activity = [
  Activityy(
    imageUrl: 'images/alleppy.jpg',
    name: 'Alleppy',
  ),
  Activityy(
    imageUrl: 'images/darjiling.jpg',
    name: 'Darjiling',
  ),
  Activityy(
    imageUrl: 'imgaes/munnar.webp',
    name: 'Munnar',
  ),
  Activityy(
    imageUrl: 'images/ooty.png',
    name: 'Ooty',
  ),
];

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/alleppy.jpg',
    name: 'Alleppy',
    description:
        'Alappuzha (Alleppey) is known as ‘the Venice of the East’. Offering the best tourist places in Alleppey, this charming place is the hub of Kerala’s backwaters and is home to a huge network of backwaters and more than thousand houseboats. The houseboats you find in the backwaters of Alappuzha are in fact a reworked version of the Kettuvallams of olden times. Kettuvallam is a Malayalam word, ‘Kettu’, means living structures and ‘Vallom’ means boat. In the olden days, kettuvallam or boat with a thatched roof that covers over wooden hulls was used to carry tons of rice and spices.',
    duration: ' start 1 day to 5 days',
    route: 'This is trip black water',
  ),
  Hotel(
    imageUrl: 'images/darjiling.jpg',
    name: 'Darjiling',
    description:
        'Nestled among the rolling mountains with the glistening Mt Kanchenjunga towering over the azure sky, Darjeeling fondly called “Queen of the Hills”, provides a perfect gateway for those seeking to be in harmony with nature. This is the land of the muscatel flavored Darjeeling tea revered by connoisseurs across the globe. This is the land of the world heritage Darjeeling Himalayan Railway where the century old miniature steam engine still chugs uphill vying for space with the fast disappearing Land Rovers. “Flowers are everywhere. The days are cold and the sun almost seems to play hide and seek with us”. – Kabiguru Rabindranath Tagore.',
    duration: ' start 1 day to 3 days',
    route: 'Himmalayan Hills',
  ),
  Hotel(
    imageUrl: 'images/munnar.webp',
    name: 'Munnar',
    description:
        'Munnar rises as three mountain streams merge  - Mudrapuzha, Nallathanni and Kundala. 1,600 m above sea level, this hill station was once the summer resort of the erstwhile British Government in South India. One of the most sought after honeymoon destinations in Kerala, Munnar is replete with resorts and logding facilities that fit a wide rage of budgets. Sprawling tea plantations, picturesque towns, winding lanes and holiday facilities make this a popular resort town. Among the exotic flora found in the forests and grasslands here is the Neelakurinji. This flower which bathes the hills in blue once in every twelve years, will bloom next in 2030. Munnar also has the highest peak in South India, Anamudi, which towers over 2,695 m',
    duration: ' start 1 day to 7 days',
    route: 'Trekking and Camping',
  ),
  Hotel(
    imageUrl: 'images/ooty.png',
    name: 'Ooty',
    description:
        'Nestled amidst Nilgiri hills, Ooty, also known as Udagamandalam, is a hill station in Tamil Nadu which serves as a top-rated tourist destination. Once regarded as the summer headquarters of the East India Company, the Queen of the hills is a picturesque getaway.Dotted with tea gardens, serene waterfalls, winding country lanes, and charming colonial architecture, Ooty is the perfect respite everyone. Popular among couples and honeymooners, Ooty allures its visitors with the panoramic views of the Nilgiri mountains.The Nilgiri mountain railway is the steepest track in all of Asia. Remember the hit song Chaiyya Chaiyya where Shahrukh Khan and Malaika Arora matching steps on top of a train? Remember the breathtaking locales as the train chugged its way across lush greenery? Yes, that was the Nilgiri Mountain Railways, and the Nilgiri Mountains all along.',
    duration: '5 days',
    route: 'Hill living, Trekking and Camping',
  ),
];
