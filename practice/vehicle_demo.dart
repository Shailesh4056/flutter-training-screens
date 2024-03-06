class Vehicle {
   var maxSpeed,year,fuelType;
   int make, model,fuelEfficiency, distanceTraveled;
   Vehicle(this.year,this.model,this.distanceTraveled,this.make
       ,this.fuelEfficiency,this.fuelType,this.maxSpeed);

  void distanceTravele(){
    print("you distance is $distanceTraveled");
  }
  void totalFuelEfficiency(){
    print("you totalFuelEfficiency is $fuelEfficiency");
  }
  void maximumSpeed(){
    print("you distance is $maxSpeed");
  }
}
class Truck extends Vehicle{

  Truck(super.year, super.model, super.distanceTraveled, super.make, super.fuelEfficiency, super.fuelType, super.maxSpeed);
}
class Car extends Vehicle{
  Car(super.year, super.model, super.distanceTraveled, super.make, super.fuelEfficiency, super.fuelType, super.maxSpeed);

}
class MotorCycle extends Vehicle{
  MotorCycle(super.year, super.model, super.distanceTraveled, super.make, super.fuelEfficiency, super.fuelType, super.maxSpeed);

}