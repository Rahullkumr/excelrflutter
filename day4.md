<h1 align="center"> Day 4 (Flutter Excelr)</h1>

## Abstraction

>  process of hiding the internal implementation and showing only the functionality to the user.

- Its done at the design level
- `abstract` keyword is used to create abstract class 
- `extends` keyword is used to extend the abstract class
- abstract method is a method without body 
- can not create object of abstract class
- whenever you extend the abstract class, you have to implement all the abstract methods 

- abstract class can have abstract methods and non abstract methods
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
```

## Interface

> to achieve multiple inheritance

- An interface is meant to be a blueprint for other classes 
- Dart has no interface keyword. Instead, all classes are implicit interfaces 
- This means we can use any class as an interface 
- Compulsory: to implement all methods of interface in the child class
- `implements` keyword is used to implement interface
- Interface can't have constructor but the implementing class can have constructor
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

- `with` keyword is used to implement mixin

```dart 
    mixin Printer {
        void printData() {
            print('Printing data...');
        }
    }

    class Application {
        void execute() {
            print('Executing application...');
        }
    }

    class PrintApplication extends Application with Printer {}

    void main() {
        var app = PrintApplication();
        app.execute();  // Outputs: Executing application...
        app.printData();  // Outputs: Printing data...
    }
```







<h1 align="center"> <a href="/day5.md">Day 5 notes</a></h1>