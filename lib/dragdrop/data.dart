enum AnimalType { land, air, fruits, number }

class Animal {
  final String imageUrl;
  final AnimalType type;

  Animal({
    this.imageUrl,
    this.type,
  });
}

final allAnimals = [
  Animal(
    type: AnimalType.fruits,
    imageUrl:
        'assets/opposite-adjectives-words-with-big-and-small-vector-35527534.jpg',
  ),
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/animal1.png',
  ),
  Animal(
    type: AnimalType.number,
    imageUrl: 'assets/adverb1.PNG',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl:
        'assets/run-word-verb-expressing-action-children-vector-35607413.jpg',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/eating.png',
  ),
  Animal(
    type: AnimalType.land,
    imageUrl: 'assets/bird1.png',
  ),
  Animal(
    type: AnimalType.number,
    imageUrl: 'assets/adverb3.PNG',
  ),
  Animal(
    type: AnimalType.fruits,
    imageUrl: 'assets/opposite-adjectives-long-short-illustration-60924397.jpg',
  ),
  Animal(
    type: AnimalType.air,
    imageUrl: 'assets/note.png',
  ),
  Animal(
    type: AnimalType.number,
    imageUrl: 'assets/adverb1.PNG',
  ),
  Animal(
    type: AnimalType.fruits,
    imageUrl: 'assets/long-hair.png',
  ),
];
