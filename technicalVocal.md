what is a closure and why would you use one?

Normally you access a variable once the function has returned

function notaclosure() {
  const shortlivedvariable = 'im here for a while';
  return shortlivedvariable;
}


notAClosure(); // returns "I'm only here for a little while"

notice nothing has access to the variable const after it is run;

function aClosure() {
const longLivedVariable = "I'm here for a long time";
  const innerFunction = function inner() {
    return longLivedVariable;
  };
  return innerFunction;
}

returns a reference to the innerFunction;

this way closure can be used to save state;

what is ajax ?

AJAX = Asynchronous JavaScript And XML.
AJAX just uses a combination of:
A browser built-in XMLHttpRequest object (to request data from a web server)
JavaScript and HTML DOM (to display or use the data)
- Ajax isnt a technology, its several. coming together, in powerful ways
Update a web page without reloading the page
Request data from a server - after the page has loaded
Receive data from a server - after the page has loaded
Send data to a server - in the background
 - AJAX incorporates XHTML and CSS
 - the DOM
 - JavaScript
 - XMLhttpRequest
 - XML and XSLT


Explain an Ajax request:

 Simply put, the use of AJAX is to use javaScript to send HTTP Requests to the server without reloading the page.

Its an API to create asynchronous web applications.

JavaScript and the XMLHttpRequest object provide the method for exchanging data asynchronously between the browser and the server.
A user interaction in the browser triggers the event, such as a button click
The AJAX call fires. This creates and AJAX request, browsers use the XMLHttpRequest object. When the server responds to the browser’s request, the same XMLHttpRequest object will process the result.
3. The server-side script receives the input from JavaScript, and processes the data.
4. After the data is processed, the script sends the data back to the original client-side page that made the request via XML
5. Once the data is received, a second JavaScript callback function, is called this function captures the data, and updates the web page accordingly.

Note: Newer technologies have slowly been replacing the XML in AJAX with JSON. The reason being, XML is a lot stricter than HTML, thus having larger file sizes, and harder to extract the data that is returned. JSON is less verbose, has proven to be more efficient, and working with data is much easier.

what is a restful API?

An API is a contract between one software and another piece of software, its a structured request and response.

API is like an waiter between two  running software.

Well, Rest is representational state transfer, architectural style for designing network applications.

It is based off a stateless, client-server protocol, almost always HTTP

restful and rest API are essentially the same thing

HTTP Methods: get, post, delete, put

endpoints is an URL/URI that the HTTP requests are sent to

whats the difference between HTTP and HTTPs?

HTTP stands for Hypertext Transfer Protocol. This protocol allows communication between different systems. When you type any web address, your browser acts as a client and the computer act as a server. HTTP uses TCP (Transmission Control Protocol), generally over port 80, to send and receive data packets over the web.

How it functions?

The client sends a request message to a HTTP server which hosts a website, the server then replies with the response message that contains completion status information, such as “HTTP/1.1 200 OK”.

HTTPS stands for Hypertext Transfer Protocol Secure. This protocol allows a secure communication between different systems. It encrypts all data during the communication. HTTPS also uses TCP (Transmission Control Protocol) to send and receive data packets, but it does so over port 443, within a connection encrypted by Transport Layer Security (TLS).

migrating over to HTTPS requires a SSL certificate


what are the  4 OOP concepts and can you go into detail about them?

Inheritance, Encapsulation, Abstraction, Polymorphism

Inheritance - its a concept where properties of one class is inherited from another

multiple types of inheritance like single, multi level hierarchical hybrid

  Syntax for single inheritance
  class A {

  }

  class B extends A {

  }

  Encapsulation - is a mechanism where you bind your data and code together as a single unit.
  hide your data to make it safe from modification

  achieved Syntaxically by Declaring the variables of a class as private.
Providing public setter and getter methods to modify and view the variables values.



abstraction -
Abstraction refers to the quality of dealing with ideas rather than events. It basically deals with hiding the details and showing the essential things to the user. If you look at the image here, whenever we get a call, we get an option to either pick it up or just reject it. But in reality, there is a lot of code that runs in the background. So you don’t know the internal processing of how a call is generated, that’s the beauty of abstraction. Therefore, abstraction helps to reduce complexity. You can achieve abstraction in two ways:

a) Abstract Class

b) Interface

Abstract class in Java contains the ‘abstract’ keyword. Now what does the abstract keyword mean? If a class is declared abstract, it cannot be instantiated, which means you cannot create an object of an abstract class. Also, an abstract class can contain abstract as well as concrete methods.

Polymorphism -

Object Oriented Programming – Java OOPs Concepts With Examples
 Recommended by 232 users

Aayushi Johari Jul 10,2018
 Object Oriented Programming – Java OOPs Concepts With Examples  Add to Bookmark  Email this Post  111.8K     6
Object Oriented programming is a programming style which is associated with the concepts like class, object, Inheritance, Encapsulation, Abstraction, Polymorphism. Most popular programming languages like Java, C++, C#, Ruby, etc. follow an object oriented programming paradigm. In this blog, I will talk about object oriented programming concepts in Java. An object-based application in Java is based on declaring classes, creating objects from them and interacting between these objects. I have discussed Java Classes and Objects which is also a part of object-oriented programming concepts, in my previous blog. In this blog, we will understand the below core concepts of Object oriented Programming in the following sequence:

Inheritance
Encapsulation
Abstraction
Polymorphism

So let’s get started with the first Object Oriented Programming concept i.e. Inheritance.

Object Oriented Programming : Inheritance
In OOP, computer programs are designed in such a way where everything is an object that interact with one another. Inheritance is one such concept where the properties of one class can be inherited by the other. It helps to reuse the code and establish a relationship between different classes.

Inheritance - object oriented programming - Edureka



As we can see in the image, a child inherits the properties from his father. Similarly, in Java, there are two classes:

1. Parent class ( Super or Base class)

2. Child class (Subclass or Derived class )

A class which inherits the properties is known as Child Class whereas a class whose properties are inherited is known as Parent class.  



Inheritance is further classified into 4 types:

Inheritance - object oriented programming - Edureka



So let’s begin with the first type of inheritance i.e. Single Inheritance:



Single Inheritance:
SingleInheritance - object oriented programming - Edureka

In single inheritance, one class inherits the properties of another. It enables a derived class to inherit the properties and behavior from a single parent class. This will in turn enable code reusability as well as add new features to the existing code.

Here, Class A is your parent class and Class B is your child class which inherits the properties and behavior of the parent class.



Let’s see the syntax for single inheritance:

1
2
3
4
5
6
7
Class A
{
---
}
Class B extends A {
---
}
2. Multilevel Inheritance:

MultilevelInheritance - object oriented programming - EdurekaWhen a class is derived from a class which is also derived from another class, i.e. a class having more than one parent class but at different levels, such type of inheritance is called Multilevel Inheritance.

If we talk about the flowchart, class B inherits the properties and behavior of class A and class C inherits the properties of class B. Here A is the parent class for B and class B is the parent class for C. So in this case class C implicitly inherits the properties and methods of class A along with Class B. That’s what is multilevel inheritance.



Let’s see the syntax for multilevel inheritance in Java:

1
2
3
4
5
6
7
8
9
Class A{
---
}
Class B extends A{
---
}
Class C extends B{
---
}
3. Hierarchical Inheritance:

HierarchicalInheritance - object oriented programming - EdurekaWhen a class has more than one child classes (sub classes) or in other words, more than one child classes have the same parent class, then such kind of inheritance is known as hierarchical.

If we talk about the flowchart, Class B and C are the child classes which are inheriting from the parent class i.e Class A.

Let’s see the syntax for hierarchical inheritance in Java:

1
2
3
4
5
6
7
8
9
Class A{
---
}
Class B extends A{
---
}
Class C extends A{
---
}
Hybrid Inheritance:
HybridInheritance - object oriented programming - EdurekaHybrid inheritance is a combination of multiple inheritance and multilevel inheritance. Since multiple inheritance is not supported in Java as it leads to ambiguity, so this type of inheritance can only be achieved through the use of the interfaces.


If we talk about the flowchart, class A is a parent class for class B and C, whereas Class B and C are the parent class of D which is the only child class of B and C.



Now we have learned about inheritance and their different types. Let’s switch to another object oriented programming concept i.e Encapsulation.

Object Oriented Programming : Encapsulation
Encapsulation is a mechanism where you bind your data and code together as a single unit. It also means to hide your data in order to make it safe from any modification. What does this mean? The best way to understand encapsulation is to look at the example of a medical capsule, where the drug is always safe inside the capsule. Similarly, through encapsulation the methods and variables of a class are well hidden and safe.

Encapsulation - Java Tutorial - Edureka

We can achieve encapsulation in Java by:

Declaring the variables of a class as private.
Providing public setter and getter methods to modify and view the variables values.
Let us look at the code below to get a better understanding of encapsulation:

1
2
3
4
5
6
7
8
9
10
11
public class Employee {
 private String name;
 public String getName() {
 return name;
 }
 public void setName(String name) {
 this.name = name;
 }
 public static void main(String[] args) {
 }
}
Let us try to understand the above code. I have created a class Employee which has a private variable name. We have then created a getter and setter methods through which we can get and set the name of an employee. Through these methods, any class which wishes to access the name variable has to do it using these getter and setter methods.


Let’s move forward to our third Object-oriented programming concept i.e. Abstraction.


Get Started with Java

Object Oriented Programming : Abstraction
Mobile - Object oriented programming - Edureka

Abstraction refers to the quality of dealing with ideas rather than events. It basically deals with hiding the details and showing the essential things to the user. If you look at the image here, whenever we get a call, we get an option to either pick it up or just reject it. But in reality, there is a lot of code that runs in the background. So you don’t know the internal processing of how a call is generated, that’s the beauty of abstraction. Therefore, abstraction helps to reduce complexity. You can achieve abstraction in two ways:

a) Abstract Class

b) Interface



Let’s understand these concepts in more detail.

Abstract class: Abstract class in Java contains the ‘abstract’ keyword. Now what does the abstract keyword mean? If a class is declared abstract, it cannot be instantiated, which means you cannot create an object of an abstract class. Also, an abstract class can contain abstract as well as concrete methods.
Note: You can achieve 0-100% abstraction using abstract class.

To use an abstract class, you have to inherit it from another class where you have to provide implementations for the abstract methods there itself, else it will also become an abstract class.

Let’s look at the syntax of an abstract class:

1
2
Abstract class Mobile {   // abstract class mobile
Abstract void run();      // abstract method
Interface: Interface in Java is a blueprint of a class or you can say it is a collection of abstract methods and static constants. In an interface, each method is public and abstract but it does not contain any constructor. Along with abstraction, interface also helps to achieve multiple inheritance in Java.
Note: You can achieve 100% abstraction using interfaces.

So an interface basically is a group of related methods with empty bodies. Let us understand interfaces better by taking an example of a ‘ParentCar’ interface with its related methods.

1
2
3
4
5
public interface ParentCar {
public void changeGear( int newValue);
public void speedUp(int increment);
public void applyBrakes(int decrement);
}
These methods need be present for every car, right? But their working is going to be different.

Let’s say you are working with manual car, there you have to increment the gear one by one, but if you are working with an automatic car, that time your system decides how to change gear with respect to speed. Therefore, not all my subclasses have the same logic written for change gear. The same case is for speedup, now let’s say when you press an accelerator, it speeds up at the rate of 10kms or 15kms. But suppose, someone else is driving a super car, where it increment by 30kms or 50kms. Again the logic varies. Similarly for applybrakes, where one person may have powerful brakes, other may not.

Since all the functionalities are common with all my subclasses, I have created an interface ‘ParentCar’ where all the functions are present. After that, I will create a child class which implements this interface, where the definition to all these method varies.

Next, let’s look into the functionality as to how you can implement this interface.
So to implement this interface, the name of your class would change to any particular brand  of a Car, let’s say I’ll take an “Audi”. To implement the class interface, I will use the ‘implement’ keyword as seen below:

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
public class Audi implements ParentCar {
int speed=0;
int gear=1;
public void changeGear( int value){
gear=value;
}
public void speedUp( int increment)
{
speed=speed+increment;
}
public void applyBrakes(int decrement)
{
speed=speed-decrement;
}
void printStates(){
System.out.println("speed:"+speed+"gear:"+gear);
}
public static void main(String[] args) {
// TODO Auto-generated method stub
Audi A6= new Audi();
A6.speedUp(50);
A6.printStates();
A6.changeGear(4);
A6.SpeedUp(100);
A6.printStates();
}
}
Here as you can see, I have provided functionalities to the different methods I have declared in my interface class. Implementing an interface allows a class to become more formal about the behavior it promises to provide. You can create another class as well, say for example BMW class which can inherit the same interface ‘car’ with different functionalities.


So I hope you guys are clear with the interface and how you can achieve abstraction using it.

Finally, the last Object oriented programming concept is Polymorphism.


Learn Java from Experts

Object Oriented Programming : Polymorphism
Polymorphism means taking many forms, where ‘poly’ means many and ‘morph’ means forms. It is the ability of a variable, function or object to take on multiple forms. In other words, polymorphism allows you define one interface or method and have multiple implementations.

Let’s understand this by taking a real-life example and how this concept fits into Object oriented programming.

Polymorphism - object oriented programming - Edureka

Let’s consider this real world scenario in cricket, we know that there are different types of bowlers i.e. Fast bowlers, Medium pace bowlers and spinners. As you can see in the above figure, there is a parent class- BowlerClass and it has three child classes: FastPacer, MediumPacer and Spinner. Bowler class has bowlingMethod() where all the child classes are inheriting this method. As we all know that a fast bowler will going to bowl differently as compared to medium pacer and spinner in terms of bowling speed, long run up and way of bowling, etc. Similarly a medium pacer’s implementation of bowlingMethod() is also going to be different as compared to other bowlers. And same happens with spinner class.
The point of above discussion is simply that a same name tends to multiple forms. All the three classes above inherited the bowlingMethod() but their implementation is totally different from one another.

Polymorphism in Java is of two types:

Run time polymorphism
Compile time polymorphism
