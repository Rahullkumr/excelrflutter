<h1 align="center"> Day 3 (Flutter Excelr)</h1>

## Object Oriented Programming System(OOPS)

- OOPS is a way of programming that focuses on using objects and classes to design and build apps.
- eg:
  - Pen
    - Properties / state: color, ink, nib, cap, size
    - Behaviours: write, draw, color
  - Student
    - Properties / state: name, age, roll no, marks
    - Behaviours: study, play, eat, sleep

<details>
   <summary>Answer by Steve Jobs</summary>
   
   <br><b>Jeff Goodell:</b>

        Would you explain, in simple terms, exactly what object-oriented software is?
   

  <b>Steve Jobs: </b><br>

        Objects are like people. 
        They’re living, breathing things that have knowledge inside them about how to do things 
        and have memory inside them so they can remember things. And rather than interacting with them at a very low level, 
        you interact with them at a very high level of abstraction, like we’re doing right here.

        Here’s an example: 
          If I’m your laundry object, you can give me your dirty clothes and send me a message that says, 
          “Can you get my clothes laundered, please.” I happen to know where the best laundry place in San Francisco is. 
          And I speak English, and I have dollars in my pockets. 
          So I go out and hail a taxicab and tell the driver to take me to this place in San Francisco. 
          I go get your clothes laundered, I jump back in the cab, I get back here. 
          I give you your clean clothes and say, “Here are your clean clothes.”

          You have no idea how I did that. 
          You have no knowledge of the laundry place. Maybe you speak French, and you can’t even hail a taxi.
          You can’t pay for one, you don’t have dollars in your pocket. Yet I knew how to do all of that.
          And you didn’t have to know any of it. All that complexity was hidden inside of me, 
          and we were able to interact at a very high level of abstraction. 
          That’s what objects are. They encapsulate complexity, and the interfaces to that complexity are high level.
</details>

## Functional Programming vs OOPS

- Functional Programming
  - Functions are the main building blocks
  - Data flows through functions
  - eg: Pure FPL (Haskell, Elm, etc)
- OOPS

  - Objects are the main building blocks
  - Data is encapsulated
  - eg: Pure OOP Language (Smalltalk, Ruby)

- Supports both functional and OOPS
  - Dart, Kotlin, Swift, Python, JavaScript, C++, Java, Apex, etc

## Pillars of OOPS

1. Polymorphism 
    - Overloading: `NOT SUPPORTED IN DART`
    - Overriding: same method name, same parameters
2. Inheritance
3. Encapsulation
4. Abstraction (example: a button in tv remote)

<details> 
  <summary>My Question on Method Overloading</summary>
  <p>
    <br><b>Qn: </b><br> <br> Why some languages like <u>Dart and Python don't have method overloading</u>? what is the problem with method overloading?
  </p>

  <p>
    <b>Ans: </b>
    <ul>
      <li>
        This is due to their dynamic nature and the way they handle function arguments.
      </li><br>      
      <li>
        In these languages, you can pass varying numbers and types of arguments to a function, which makes method overloading unnecessary. 
        For example, you can use optional parameters, default values, or collections (like lists or dictionaries) to achieve similar results to method overloading.
      </li><br>
      <li>
        Instead of method overloading, Dart and Python offer other features like default parameters and named parameters to achieve similar functionality with less complexity.     
    </ul>  
  </p>
</details>

## Class and Object

- Class is a blueprint of an object
- Object is an instance of a class
- memory is allocated when the object is created
  - just like land is allocated, when a building is built on it

## Constructor

- without the help of constructor, we cannot build a house
- similarly, without constructor, we cannot build an object
- without constructor, memory cannot be allocated to the object
- when we don't create a constructor, a default hidden constructor is created by the compiler
- constructor looks like a method but it is not a method, i.e it can't be called like a method
- constructor will be called automatically when an object is created
- constructor has the same name as the class
- constructors are `used to initialize the instance variables`, except DEFAULT constructor
- The <b>DEFAULT constructor</b> provided by the compiler <strike>does not play a role in initialization.</strike>

<details>
  <summary>My Question</summary>
  <p>
    <b>Q : </b> 
      <ul>
        <li>What if a developer creates a constructor and does not explicitly initializes the variables? will the variables be initialized, if yes, who does it? Will the default constructor be provided or something else happens?</li>
    </ul>
    <b>A :</b> 
      <ul>
        <li>If a developer creates a constructor and does not explicitly initialize the instance variables, those variables will still be initialized with their default values.</li><br>
        <li>The <i><u><b>automatic initialization</b></u></i> of instance variables with default values is done <i><u><b>by Dart runtime system</b></u></i> when an object is created. This is a built-in feature of the language and happens regardless of whether a constructor is defined or not.</li><br>
        <li>The <b>default constructor</b> provided by the compiler <strike>does not play a role in initialization.</strike></li>
      </ul>
  </p>
</details>

## Types of constructor

  1. DEFAULT constructor

      > - hidden, automatically provided by compiler if no constructor is present in the class

      > - does not play a role in the initialization

      > - The primary use of the default constructor is to create an instance of the class

      > - to perform some setup or initialization when an object is created, you can define your own constructor to replace the default one.
    
  2. 0-arg constructor
      > created by coder, has no parameters 
  3. parameterized constructor
      > has parameters
  4. named constructor
      > has a name and is used to create multiple constructors for a class
  5. constant constructor
      > has a const keyword and is used to create compile time constants

```dart
    class Student{
        var name = "";
        Student(this.name){
            // when parameter name is same as instance variable name
            // this keyword is used to refer to the instance variable
            print("Constructor called");
        }
        void study(){
            print("$name studies");  
        }
        void play(){
            print("Student plays");
        }
    }
    void main(){
        Student s1 = Student("Ram"); // object creation (memory allocation)
        print(s1.name);
        s1.study();
        s1.play();
    }
```

## Inheritance

- Inheritance is the ability of one class to inherit properties and behaviour from another class
- except constructors
- Inheritance is used for code reusability 

## 3 Types of Inheritance in Dart

1. Single Inheritance
    - A class can inherit from only one class
2. Multi-level Inheritance
    - A class can inherit from a class which is already inheriting from another class
3. Hierarchical Inheritance
    - Multiple classes can inherit from a single parent class

```dart
  // multi-level inheritance
  class Mammal{
    var mammalEyes = 2;
    mammalSleeping(){
      print("Mammal sleeps");
    }
  }
  class Animal extends Mammal{
    var animalLegs = 4;

    void animalEating(){
      print("Animal eats");
    }
  }

  class Tiger extends Animal {
  var eyes = 2;
  var legs = 4;
  int? noOfHours; // ? is used to make the variable nullable

  // void tigerPlay(this.noOfHours) { <== only possible in constructors

  void tigerPlay(noOfHours) {
    this.noOfHours = noOfHours;
    // this keyword is used to refer to the instance variable when parameter name is same as instance variable name
    print("Tiger plays for $noOfHours hours");
  }
  
  @override
  void animalEating(){
    super.animalEating(); // super is used to call to instant parent class
    print("Tiger Eating GOOD FOOD");
  }
}

void main() {
  var tiger = Tiger();
  tiger.tigerPlay(5);
  tiger.mammalSleeping();
  tiger.animalEating();
}
```







<h1 align="center"> <a href="/day4.md">Day 4 notes</a></h1>
