# Day1 (Flutter Excelr)

### Trainer intro

- Kalim Ansari (16+ years experience)
- Flutter certified
- currently Senior Manager and Corporate Trainer

## learn how to learn

- ask yourself: what, why, where and how
- notes: Android Technical Consultancy (ATC)

## what is Flutter?

- Mobile app development 
- Hybrid / Cross Platform 
    > that can run on both android as well as IOS
- Cross Platform:
    - Flutter (2018 - 19):     Dart
    - React Native (2015):     JS
    - Xamrin(2013):            C#

## why Flutter?

1. Single codebase
    - Android --> Kotlin / Java and Android libraries
    - IOS     --> Swift / Objective C and ios libraries 
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

```dart

void main(){

    print("Hello World");     


    // Static declaration
    String myname = "Rahul";
    int age = 24;


    // String interpolation
    print("My name is $myname and age is $age");


    // Dynamic declaration
    var city = "Pune";

    // null safety
    String? country = null;

    var id = null;
}

```