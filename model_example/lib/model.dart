
void main() {
  print(CountryModel(
    name: "Kyrgyz Republic",
     square: 199.500,
     language: "Kyrgyz",
     population: 7200000,
     created: 1991,
     isLocked: false,
     ).toPrint());
}
class CountryModel {
  final String name;
  final double square;
  final String language;
  final int population;
  final bool? isNeighbor;
  final int created;
  final bool? isLocked;

  CountryModel({
    required this.name, 
    required this.square, 
    required this.language, 
    required this.population, 
    this.isNeighbor, 
    required this.created, 
    this.isLocked
    });

    Map<String, dynamic> toPrint(){
      return {
        "Name": name,
        "Square": square,
        "Language": language,
        "Population": population,
        "isNeighbor": isNeighbor ?? "",
        "Created": created,
        "isLocked": isLocked ?? "", 
      };
    }
}