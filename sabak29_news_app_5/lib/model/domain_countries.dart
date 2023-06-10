class Country {
  const Country(
      {required this.name,
      required this.domain}); // {this.name, this.domain} - bul named constructor
  final String name;
  final String domain;
}

const Country oae = Country(name: 'OAE', domain: 'ae');
const Country france = Country(name: 'France', domain: 'fr');
const Country korea = Country(name: 'Korea', domain: 'kr');
const Country poland = Country(name: 'Poland', domain: 'pl');
const Country russia = Country(name: 'Russia', domain: 'ru');
const Country argentina = Country(name: 'Argentina', domain: 'ar');
const Country germany = Country(name: 'Germany', domain: 'de');

Set<Country> countrySet = {
  oae,
  france,
  korea,
  poland,
  russia,
  argentina,
  germany,
};
