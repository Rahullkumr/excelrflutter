<h1 align="center"> Day 1 (Flutter Excelr)</h1>


## learn how to learn

- ask yourself: what, why, where and how
- notes: Android Technical Consultancy (ATC)

## what is Flutter?

- Mobile app development
- Hybrid / Cross Platform
  > that can run on both android as well as IOS
- Cross Platform:
  - Flutter (2018 - 19): Dart
  - React Native (2015): JS
  - Xamrin(2013): C#

## why Flutter?

1. Single codebase

   - Android --> Kotlin / Java and Android libraries
   - IOS --> Swift / Objective C and ios libraries
   - Android code base
   - IOS code base
   - time(money) / resources / more app dev challenges / mgmt of app

2. By Google

3. WebApps, desktop apps, IOT

4. Flutter over React Native

- huge collection of widgets (readymade)
  > RN: you need to develop from scratch
- Performance (Dart code directly gets converted to machine code)
  > RN:
    <details>
        <summary>Performance</summary>
        Flutter is faster than React Native because Flutter uses a JIT compiler, which converts Dart code directly into machine code at runtime. This means that Flutter applications can run more quickly than React Native applications, which use an interpreter to execute JavaScript code.
    </details>
- Hot Reload
- Community Support
- good access to Native support(like camera, accelerometer or hardware)

## Dart Language

- copied 70% from Java and 30% from Python
- GPL (general purpose language)
- built by Google

- SDK (collection of libraries(collection of classes))

## Variables in Dart

  > - `var`: When a variable is declared with `var`, the variable can hold a value of any datatype but you can't change its type later

  ```dart
    var x = 10; // x is now an int
    x = 'Hello'; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  ```

  > - `dynamic`: When you declare a variable with `dynamic`, the variable can hold a value of any type and can change its type over time.

  ```dart
    dynamic y = 10; // y is now an int
    y = 'Hello'; // y is now a String, no error
  ```

```dart

void main(){

    print("Hello World");


    // Static declaration
    String myname = "Rahul";
    int age = 24;


    // String interpolation
    print("My name is $myname and age is $age");


    // Dynamically declared variables can hold NULL values.

    // Dynamic declaration using var keyword
    var city = "Pune";

    // Dynamic declaration using dynamic keyword
    dynamic city = 'Ranchi';


    String name;
    print(name); // error: name (Non-nullable variable) must be assigned b4 using
    // solution 1
        String name = '';
    // solution 2
        var name;


    // country can now store String value OR null
    String? country; // automatically initialized with null

    var id = null;
}
```
## Types of variables

- Global variables
  - declared outside all classes 
  - can be accessed from anywhere in the code
  - available throughout the entire lifecycle of the application

- Local variables
  - defined within a method, constructor or block
  - created when the method, constructor or block is entered and destroyed as soon as it is left 
  - can be accessed only within the method, constructor or block.

- Instance variables
  - defined within a class but outside any method. 
  - They belong to an instance of the class, i.e,
  - each instance of the class has its own copy of the instance variable
  - that's why can be accessed only using the object of the class

- Static variables
  - also defined within a class but outside any method. 
  - belong to the class itself rather than to any instance of the class.
  - can not be accessed using the object of the class.
  - accessed only using class name.
  - There is only one copy of a static variable, and it is shared among all instances of the class.

```dart
// Global variable
var globalVariable = 'I am a global variable';

class MyClass {
  // Instance variable
  var instanceVariable = 'I am an instance variable';

  // Static variable
  static var staticVariable = 'I am a static variable';

  void myMethod() {
    // Local variable
    var localVariable = 'I am a local variable';
    print(localVariable);
  }
}

void main() {
  print(globalVariable);

  var myObject = MyClass();
  print(myObject.instanceVariable);

  print(MyClass.staticVariable);

  myObject.myMethod();
}
```

<h1 align="center"> <a href="/day2.md">Day 2 notes</a></h1>
