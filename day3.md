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
    <p>
        <br><b>Jeff Goodell:</b>

        Would you explain, in simple terms, exactly what object-oriented software is?

<b>Steve Jobs: </b><br>

        Objects are like people. They’re living, breathing things that have knowledge inside them about how to do things and have memory inside them so they can remember things. And rather than interacting with them at a very low level, you interact with them at a very high level of abstraction, like we’re doing right here.

        Here’s an example: If I’m your laundry object, you can give me your dirty clothes and send me a message that says, “Can you get my clothes laundered, please.” I happen to know where the best laundry place in San Francisco is. And I speak English, and I have dollars in my pockets. So I go out and hail a taxicab and tell the driver to take me to this place in San Francisco. I go get your clothes laundered, I jump back in the cab, I get back here. I give you your clean clothes and say, “Here are your clean clothes.”

        You have no idea how I did that. You have no knowledge of the laundry place. Maybe you speak French, and you can’t even hail a taxi. You can’t pay for one, you don’t have dollars in your pocket. Yet I knew how to do all of that. And you didn’t have to know any of it. All that complexity was hidden inside of me, and we were able to interact at a very high level of abstraction. That’s what objects are. They encapsulate complexity, and the interfaces to that complexity are high level.
    </p>

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
2. Inheritance
3. Encapsulation
4. Abstraction (example: a button in tv remote)

## Class and Object

- Class is a blueprint of an object
- Object is an instance of a class
- memory is allocated when the object is created
  - just like land is allocated, when a building is built on it

## Constructor

- without the help of constructor, we cannot build a house
- similarly, without the help of constructor, we cannot build an object
- without constructor, memory cannot be allocated to the object
- if we don't create a constructor, then a default constructor is created by the compiler

- constructor looks like a method but it is not a method, i.e it can't be called like a method
- has the same name as the class
- constructor will be called automatically when an object is created
- constructor is used to initialize the instance variables of a class 
- types of constructors
  - default constructor
    > has no parameters and is automatically created by compiler if no other constructor is there 
  - parameterized constructor
    > has parameters and is used to initialize the instance variables of a class
  - named constructor
    > has a name and is used to create multiple constructors for a class
  - constant constructor
    > has a const keyword and is used to create compile time constants

```dart
    class Student{
        var name = "Ram";
        Student(){
            print("Constructor called");
        }
        void study(){
            print("Student studies");  
        }
        void play(){
            print("Student plays");
        }
    }
    void main(){
        Student s1 = Student(); // object creation (memory allocation)
        print(s1.name);
        s1.study();
        s1.play();
    }
```

<h1 align="center"> <a href="/day4.md">Day 4 notes</a></h1>
