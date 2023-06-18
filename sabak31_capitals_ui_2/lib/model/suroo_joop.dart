class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({required this.text, required this.isTrue});
  final String text;
  final bool isTrue;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    joop(text: 'Germany', isTrue: false),
    joop(text: 'Finland', isTrue: false),
    joop(text: 'France', isTrue: true),
    joop(text: 'Italy', isTrue: false),
  ],
);
const Suroo s2 = Suroo(
  text: 'Bern',
  image: 'BernSwitzerland',
  jooptor: [
    joop(text: 'Russia', isTrue: false),
    joop(text: 'Switzerland', isTrue: true),
    joop(text: 'England', isTrue: false),
    joop(text: 'Spain', isTrue: false),
  ],
);
const Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'BruselBelgium',
  jooptor: [
    joop(text: 'Macedonia', isTrue: false),
    joop(text: 'Portugal', isTrue: false),
    joop(text: 'Albania', isTrue: false),
    joop(text: 'Brusel', isTrue: true),
  ],
);
const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'CopenhagenDenmark',
  jooptor: [
    joop(text: 'Denmark', isTrue: true),
    joop(text: 'Ukrain', isTrue: false),
    joop(text: 'Poland', isTrue: false),
    joop(text: 'Norway', isTrue: false),
  ],
);
const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    joop(text: 'Greece', isTrue: false),
    joop(text: 'Sweeden', isTrue: false),
    joop(text: 'Germany', isTrue: true),
    joop(text: 'Turkey', isTrue: false),
  ],
);
List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
