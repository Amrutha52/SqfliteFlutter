import 'dart:io';

import 'package:flutter/material.dart';

// void main() {
//
//   print("Enter a number :- ");
//
//   //String? s = stdin.readLineSync();
//
//   // if(s != null)
//   //   {
//       var number = int.parse(stdin.readLineSync()!);
//       print('number' + number.toString());
//
//       for(int i =1; i <= number; i++)
//       {
//         int squareOfANumber = number * number;
//         print('squareOfANumber' + squareOfANumber.toString());
//         print(squareOfANumber);
//       }
//
//    // }
//
//
//
//
//
// }


// void main()
// {
//   List<Animal> animals = [Dog(), Cat()];
//
//   for(var animal in animals)
//     {
//       animal.makeSound();
//     }
// }
//
// abstract class Animal
// {
//   void makeSound();
// }
//
// class Dog extends Animal
// {
//   @override
//   void makeSound()
//   {
//     print('Woof!');
//   }
// }
//
// class Cat extends Animal
// {
//   @override
//   void makeSound()
//   {
//     print('Meow!');
//   }
// }

// void main()
// {
//   Circle circle = Circle('red', 5.0);
//   circle.displayColor(); // This shape is red.
//
//   circle.radius = -2.0; // Throws an error
//
//   Rectangle rectangle = Rectangle('blue', 10.0, 5.0);
//   rectangle.displayColor(); // This shape is blue.
//
// }
//
// class Shape
// {
//   String color;
//
//   Shape(this.color);
//
//   String getColor()
//   {
//     return color;
//   }
//
//   void setColor(String color) {
//     this.color = color;
//   }
//
//   void displayColor() {
//     print('Color :  $color.');
//   }
//
// }
//
// class Circle extends Shape {
//   double radius = 0.0;
//
//   Circle(String color, double radius) : super(color) {
//     this.radius = radius;
//   }
//
//   double get radiuss => radius;
//
//   set radiuss(double radius) {
//     if (radius <= 0) {
//       print('Radius cannot be zero or negative.');
//     }
//     this.radius = radius;
//   }
// }
//
// class Rectangle extends Shape {
//   double length=0.0;
//   double width=0.0;
//
//   Rectangle(String color, double length, double width) : super(color) {
//     this.length = length;
//     this.width = width;
//   }
//
//   double get lengthh => length;
//
//   set lengthh(double length) {
//     if (length <= 0) {
//       print('Length cannot be zero or negative.');
//     }
//     this.length = length;
//   }
//
//   double get widthh => width;
//
//   set widthh(double width)
//   {
//     if (width <= 0) {
//       print('Width cannot be zero or negative.');
//     }
//     this.width = width;
//   }
// }

void main() {
  Car car = Car();
  car.startEngine(); //  Car engine started.
  car.stopEngine();  //  Car engine stopped.
}

mixin Logger {
  void logMessage(String message) {
    print('Print your Log Message : $message');
  }
}

abstract class Vehicle {
  void startEngine();
  void stopEngine();
}

class Car extends Vehicle with Logger {
  @override
  void startEngine() {
    logMessage('Car engine started.');
  }

  @override
  void stopEngine() {
    logMessage('Car engine stopped.');
  }
}

