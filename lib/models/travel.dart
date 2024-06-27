// ignore_for_file: public_member_api_docs, sort_constructors_first
class Travel {
  final String name;
  final String image;
  final String imageDestination;
  final String destinationName;
  final String destinationLocate;
  final String destinationDesctiption;
  final String location;
  final int price;
  final String description;
  final List<String> preview;

  Travel({
    required this.name,
    required this.image,
    required this.imageDestination,
    required this.destinationName,
    required this.destinationLocate,
    required this.destinationDesctiption,
    required this.location,
    required this.price,
    required this.description,
    required this.preview,
  });
}

final listTravel = [
  Travel(
    name: 'Rinjani Mountain',
    image: 'assets/rinjani.png',
    location: 'Lombok, Indonesia',
    price: 48,
    description:
        'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
    preview: [
      'assets/preview1.png',
      'assets/preview2.png',
      'assets/preview3.png',
      'assets/preview4.png',
    ],
    imageDestination: 'assets/pink_beach.png',
    destinationName: 'The Pink Beach',
    destinationLocate: 'Komodo Island, Indonesia',
    destinationDesctiption:
        'This exceptional beach gets its striking color\n from microscopic animals called...',
  ),
  Travel(
    name: 'Bromo Mountain',
    image: 'assets/bromo.png',
    location: 'East Java, Indonesia',
    price: 34,
    description:
        'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
    preview: [
      'assets/preview1.png',
      'assets/preview2.png',
      'assets/preview3.png',
      'assets/preview4.png',
    ],
    imageDestination: 'assets/meru_tower.png',
    destinationName: 'Meru Tower',
    destinationLocate: 'Bali, Indonesia',
    destinationDesctiption:
        'A Meru tower or pelinggih meru is the principal\n shrine of a Balinese temple. It is a wooden...',
  ),
  Travel(
    name: 'Bromo Mountain',
    image: 'assets/bromo.png',
    location: 'East Java, Indonesia',
    price: 34,
    description:
        'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
    preview: [
      'assets/preview1.png',
      'assets/preview2.png',
      'assets/preview3.png',
      'assets/preview4.png',
    ],
    imageDestination: 'assets/toraja_land.png',
    destinationName: 'Toraja Land',
    destinationLocate: 'South Sulawesi, Indonesia',
    destinationDesctiption:
        'Toraja land is one the tourist destination area\n in indonesia that must be visited because it...',
  ),
];
