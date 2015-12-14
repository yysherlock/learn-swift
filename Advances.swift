//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var maybeString: String? = "hi"

print(maybeString)

if maybeString != nil{
    maybeString!.characters.count // ! means we forcefully unwrapped it, which can cause a crash. (Dangerous)
                        // Optionals(?) just make us safe. Remember that String in Swift 2.0 is a collection of characters
}

// An alternative way of above snippet, cuz always do that checking is annoying right?
// Optional Binding, now you don't have to use `!`.
// There is a syntax you can use called `if let`
// 'let' defines a constant variable
if let definitelyString = maybeString {
    // only pass when unwrapped value from maybeString is not nil.
    // and assign that value to definitelyString
    definitelyString.characters.count
} else {
    print("It's nil")
}

// `guard` let's you guard the fact that gurad let's you unwrap.
// `guard` lets a stay inside the outer scope, instead of in inner scope
// guard let string = maybeString else { return }

// Another type of optional: Implicitly Unwrapped Optional
var mostLikelyString : String! = "Hi" // means mostLikelyString should be a string, you can use it directly as a string.

mostLikelyString.characters.count // whenever you use it, you can use it as a non-optional, because it unwrap it eveytime.

// optional chaining
class CupHolder {
    var cups:[String]? = nil
    
}

class Car {
    var cupHolders: CupHolder? = nil
    
}

let niceCar = Car()
niceCar.cupHolders = CupHolder()

// To comment a block of code, just type `cmd + /`, it is a shorcut for commenting a block
//if var cupHolder = niceCar.cupHolders {
//    if var cups = cupHolder.cups {
//        cups.append("Coke")
//    } else {
//        cupHolder.cups = ["Coke"]
//    }
//}
niceCar.cupHolders?.cups=[]
niceCar.cupHolders?.cups?.append("Coke")

if niceCar.cupHolders?.cups?.count > 0 {
    niceCar.cupHolders?.cups?[0] = "Coke"
} else {
    
}

if let cupHolder = niceCar.cupHolders {
    if let cups = cupHolder.cups {
        if (cups[0] == "Coke") {
            print("Yay")
        } else {
            print("Aww")
        }
    }
}

let firstCup = niceCar.cupHolders?.cups?[0]
print(firstCup)



// Closure : which are kind of functions, in swift, they are functions
// In swift, functions are sort of first class citizens, a type, just like integers
// You can pass them around, you can assign them, you can even reassign function variables.

func performMagic(thingy: String) -> String {
    return thingy
}


// properties
// Strong and Weak properties: Ownership, own or not
class Legs {
    var count : Int = 0
}

class Animal {
    var name : String = ""
    var legs : Legs = Legs()
    
    var uppercaseName: String { // property observer : computed property, only define the return type, it does not have parameters
        return name.uppercaseString  // uppercaseName is a property, but it doesn't store anything, it's computed property, it computes value from some other values in the class.
    }
    
    var uppercaseName0: String {
        
        get {
            return name.uppercaseString
        }
        
        set {
            name = newValue // in the setter, you automatically get this `newValue`
        }
        
    }
    
}

class Vet {
    weak var legs : Legs? = nil // a weak reference, does not increment the reference counts of legs, so Vet does not own Legs, to prevent memory leaks in your program
    // The Vet instance only have a reference to its property legs, but not own it, which means the lifetime is not connected to the other.
    // If Vet instance is deallocated the it doesn't effect the legs. And if legs were deallocated, legs reference in Vet would just be nil.
    
}

// Header file: You can put everything public in the header and everyone else can see it.
// Anything that is not in the header is sort of private to you.
// public
// private class: its property can be accessed by others in the same file
// protected class (default): means your module can see it, that's sort of a project concept



// Cheat Sheet
// 1. inheritance and overriding
class SuperNumber : NSNumber { // inheritance from NSNumber class
    
    // override key word
    override func getValue(value: UnsafeMutablePointer<Void>) {
        super.getValue(value)
    }
    
    
}

// extension: instead of override, we just want to add some functionality to it.
// And we want this functionality to be available to all NS numbers (or its subclasses).

extension NSNumber {
    func superCoolGetter() -> Int {
        return 5
    }
}

var n = NSNumber(int : 4)
n.superCoolGetter()

var a = "hi"
var b = a
b = "xixi"
a

// protocal: sort of interface to the class

protocol dancable {
    func dance()
}

class Person : NSNumber, dancable{
    func dance() {
        
    }
}

// enum
enum TypesOfVeggies : String {
    case Carrots
    case Tomatoes
    case Celery
}

let carrot = TypesOfVeggies.Carrots
carrot.rawValue

func eatVeggies(veggie : String){ // not safe
    
}

func eatVeggies(veggie : TypesOfVeggies){ // safe
    
}

let randomVeggie0 = TypesOfVeggies(rawValue: "Carrots") // create your own, initialize it
let randomVeggie1 = TypesOfVeggies(rawValue: "Lead") // "Lead" is illegal, so you'll get a nil

eatVeggies(TypesOfVeggies.Celery)

class A {
    var word : String
    var score : double_t
    
    init(word : String, score : double_t) {
        self.word = word
        self.score = score
    }
    
    convenience init(){
        self.init(word: "zhiyi", score : 100.0)
    }
    
}

// initializer
class NewCar : A{
    var cupHolder : String
    // 1. var cupHolder : String  = "two holders"
    // 2.
    required init(cupHolder : String) {
        self.cupHolder = cupHolder
        super.init(word: "xixi", score: 60.0)
    }
    
    convenience init() { // convenience initializer has to call a required initializer to complete
        self.init(cupHolder: "Cool")
    }


    //deinit
    
}


let car = NewCar(cupHolder: "Cool")

let newCar = Car()

































