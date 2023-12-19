class Car{
  String model;
  int year;
  int rentPerDay;
  String image;

  Car(this.model, this.year, this.rentPerDay, this.image);

  @override
  String toString() {
    return '$model-$year';
  }


}

List<Car> cars=[
  Car("BMW",2015,20,"assets/bmw.jpg"),
  Car("Mercedes",2016,40,"assets/mercedes.jpg"),
  Car("Volvo",2017,20,"assets/volvo.jpg"),
  Car("Toyota",2022,50,"assets/toyota.jpg"),
];