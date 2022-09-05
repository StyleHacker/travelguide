import './model/fout_cateries.dart';
import './model/ship_data.dart';

const Category_data = const [
  Category(
    title: 'vectoria cruise',
    image: 'images/cruise1.jpg',
    id: 's1',
    destination:
        "Chennai\nColombo\nLakshadweep\nMale\nGoa\nMumbai\nSri Lanka\nCochin",
    shipActivity: 'Enternment\nResturend\nBors',
    desctiption: 'This one of the pamban ever cruise',
  ),
  Category(
      title: 'angeria cruise',
      image: 'images/ship.png',
      id: 's2',
      destination:
          "Chennai\nColombo\nLakshadweep\nMale\nGoa\nMumbai\nSri Lanka\nCochin",
      shipActivity: 'Enternment\nResturend\nBors',
      desctiption: 'This one of the pamban ever cruise'),
  Category(
    title: 'pamban cruise',
    image: 'images/cruise3.jpg',
    id: 's3',
    destination:
        "Chennai\nColombo\nLakshadweep\nMale\nGoa\nMumbai\nSri Lanka\nCochin",
    shipActivity: 'Enternment\nResturend\nBors',
    desctiption: 'This one of the pamban ever cruise',
  ),
];
const Dummy_Ship = const [
  ShipDetails(
      detailsId: 'a1',
      destinations:
          "Chennai\nColombo\nLakshadweep\nMale\nGoa\nMumbai\nSri Lanka\nCochin",
      desctiption: 'This one of the first ever cruise ',
      shipActivity: [
        'Enternment',
        'Resturend',
        'Bors',
      ],
      shipId: 's1'),
  ShipDetails(
      detailsId: 'a2',
      destinations:
          "'Chennai'\n'Colombo'\n' Lakshadweep'\n'Male'\n'Goa'\n' Mumbai'\n'Sri Lanka'\n'Cochin'",
      desctiption: 'This one of the first angeriya cruise ',
      shipActivity: [
        'Enternment',
        'Resturend',
        'Bors',
      ],
      shipId: 's2'),
  ShipDetails(
      detailsId: 'a3',
      destinations:
          "'Chennai'\n'Colombo'\n' Lakshadweep'\n'Male'\n'Goa'\n' Mumbai'\n'Sri Lanka'\n'Cochin'",
      desctiption: 'This one of the pamban ever cruise ',
      shipActivity: [
        'Enternment',
        'Resturend',
        'Bors',
      ],
      shipId: 's3')
];
