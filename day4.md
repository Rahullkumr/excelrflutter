<h1 align="center"> Day 4 (Flutter Excelr)</h1>

## Abstraction

>  process of hiding the internal implementation and showing only the functionality to the user.

- Its done at the design level
- `abstract` keyword is used to create abstract class 
- `extends` keyword is used to extend the abstract class
- abstract method is a method without body 
- can not create object of abstract class
- whenever you extend the abstract class:
    - `Compulsory`: to implement abstract methods but non abstract methods are optional
- abstract class can have both abstract methods and non abstract methods
- Abstract classes can have constructors.
- A class can extend only one abstract class (since dart doesn't support multiple inheritance)

> eg: If you want to work at Google, you need to follow some protocols.

```dart
    abstract class GoogleCompany{
        void security();
        void wearMask();

        void haveLunch(){
            print("have lunch");
        }
    }
    class SoftwareGuys extends GoogleCompany{
        @override
        void security(){
            print("show your id card");
        }

        @override
        void wearMask(){
            print("n95 mask");
        }

        @override
        void haveLunch(){
            print("have Biryani in lunch");
        }
    }
    class HardwareGuys extends GoogleCompany{
        @override
        void security(){
            print("scan finger print");
        }

        @override
        void wearMask(){
            print("wear cloth mask");
        }
    }

    void main(){
        var software = SoftwareGuys();
        software.security();
        software.haveLunch();

        var hardware = HardwareGuys();
        hardware.wearMask();
    }

    /* OUTPUT
    show your id card
    have Biryani in lunch
    wear cloth mask
    */
```

## Interface

> to achieve multiple inheritance

- An interface is meant to be a blueprint for other classes 
- `Dart has no interface keyword`. Instead, all classes are implicit interfaces 
- This means we can use any class as an interface 
- whenever we inherit an interface:
    - Compulsory: to implement both abstract methods as well as non-abstract methods

- `implements` keyword is used to implement interface
- Interface can't have constructors
    > interfaces are not meant to be instantiated directly. Instead, they are used to define contracts that other classes must adhere to.
- A class can implement multiple interfaces but only can extend a single class.

```dart
    class Father {
        antiqueCar() {
            print("has antique car");
        }

        antiqueWatch(){
            print("has antique watch");
        }
    }

    class Mother {
        antiqueJewellery() {
            print("has antique jewellery");
        }
    }

    class Son implements Father, Mother {
        @override
        antiqueCar() {
            print("has antique car");
        }

        @override
        antiqueWatch() {
            print("has antique watch");
        }

        @override
        antiqueJewellery() {
            print("my mother has antique jewellery");
        }
    }

    void main() {
        var son = Son();
        son.antiqueCar();
        son.antiqueWatch();
        son.antiqueJewellery();
    }
```

## Mixins

> to achieve multiple inheritance

[Mixin vs Inheritance](https://www.dhiwise.com/post/flutter-mixins-vs-inheritance-choosing-the-right-approach)

- It’s a way to reuse code across multiple classes.
- Mixin allows a programmer to inject some code into a class
- `with` keyword is used to implement mixin
- Mixins don't have constructors
- Mixins can't be instantiated directly
- useful for adding additional functionality to a class without modifying its inheritance hierarchy
- Promotes code reusability and reduces code duplication
- You can also integrate interfaces or abstract classes with mixins, making them a top choice among developers
- Mixins are compiled at runtime, which can make debugging more difficult
- Mixins are more flexible than inheritance because they do not require the classes to be related


```dart 
import 'package:flutter/material.dart';

mixin TextMixin {
  TextStyle headingTextStyle() {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.green,
    );
  }

  TextStyle bodyTextStyle() {
    return TextStyle(
      fontSize: 16.0,
      color: Colors.grey,
    );
  }
}

class MyWidget extends StatelessWidget with TextMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome',
          style: headingTextStyle(),
        ),
        Text(
          'Lorem ipsum dolor sit amet',
          style: bodyTextStyle(),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    ),
  );
}

```

## Synchronous  vs Asynchronous Programming

<img src="https://miro.medium.com/v2/resize:fit:607/1*3s0x80mZdGNF2W-rkNXI1Q.png">

- Synchronous programming is the traditional way of programming.
- Asynchronous programming is a new way of programming.

- When you execute something synchronously, you wait for it to finish before moving on to another task. 

- When you execute something asynchronously, you can move on to another task before it finishes.

- Here are some common asynchronous operations:
  - Fetching data over a network.
  - Writing to a database.
  - Reading data from a file.

```dart
// synchronous code, executed line by line without waiting for 5s

Future<String> getData(){
  return Future.delayed(const Duration(seconds: 5), (){
    return " Some data from the server";
  });
}

void main(){
  print("main fn started");
  
  var res = getData();
  print("received $res");
  
  print("main fn ended");
}
```
```dart
// Partially asynchronous code, executed line by line waiting for 5s

Future<String> getData(){
  return Future.delayed(const Duration(seconds: 5), (){
    return " Some data from the server";
  });
}

void main() async{
  print("main fn started");
  
  var res = await getData();
  print("received $res");
  
  print("main fn ended");
}
```
```dart
// Fully asynchronous code, executed randomly, skipped the 5s wait 

Future<String> getData() {
  return Future.delayed(const Duration(seconds: 5), () {
    return " Some data from the server";
  });
}

void main() {
  print("main fn started");

  getData().then((value) => print("received $value"));

  print("main fn ended");
}

```



<h1 align="center"> <a href="/day5.md">Day 5 Flutter</a></h1>