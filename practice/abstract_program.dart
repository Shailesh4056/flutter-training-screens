abstract class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year);

  void start(); // Abstract method
}

class Car extends Vehicle {
  Car(String model, int year) : super(model, year);

  @override
  void start() {
    print('$model Car, Year $year has started.');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(String model, int year) : super(model, year);

  @override
  void start() {
    print('$model Motorcycle, Year $year has started.');
  }
}
class Auto extends Vehicle{
  Auto(String model, int year) : super(model,year);
  @override
  void start() {
    print("$model auto , year $year has started");
    // TODO: implement start
  }

}

void task2() {
  Car myCar = Car('Sedan', 2022);
  Motorcycle myMotorcycle = Motorcycle('Sport Bike', 2021);
  Auto myAuto  = Auto('auto', 2000);

  myCar.start();
  myMotorcycle.start();
  myAuto.start();
}
