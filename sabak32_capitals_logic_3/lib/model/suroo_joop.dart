class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  const joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    joop(text: 'Germany', isBool: false),
    joop(text: 'Finland', isBool: false),
    joop(text: 'France', isBool: true),
    joop(text: 'Italy', isBool: false),
  ],
);
const Suroo s2 = Suroo(
  text: 'Bern',
  image: 'BernSwitzerland',
  jooptor: [
    joop(text: 'Russia', isBool: false),
    joop(text: 'Switzerland', isBool: true),
    joop(text: 'England', isBool: false),
    joop(text: 'Spain', isBool: false),
  ],
);
const Suroo s3 = Suroo(
  text: 'Brussel',
  image: 'Brussel',
  jooptor: [
    joop(text: 'Macedonia', isBool: false),
    joop(text: 'Portugal', isBool: false),
    joop(text: 'Albania', isBool: false),
    joop(text: 'Belgium', isBool: true),
  ],
);
const Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'CopenhagenDenmark',
  jooptor: [
    joop(text: 'Denmark', isBool: true),
    joop(text: 'Ukrain', isBool: false),
    joop(text: 'Poland', isBool: false),
    joop(text: 'Norway', isBool: false),
  ],
);
const Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    joop(text: 'Greece', isBool: false),
    joop(text: 'Sweeden', isBool: false),
    joop(text: 'Germany', isBool: true),
    joop(text: 'Turkey', isBool: false),
  ],
);
List<Suroo> surooJoopList = [
  s1,
  s2,
  s3,
  s4,
  s5,
];
