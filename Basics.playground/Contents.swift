//: Playground - noun: a place where people can play

import UIKit

let constantString = "Hi" // define a constant
//constantString = "xixi" // error because you can change a constant 

var str = "Hello, playground"
// str = nil // error: nil is not a string
var strq : String? = "Hello World!" // Optional type

print(strq)

// var counter = 0
// make for loop
for counter in 0..<10 {
    guard counter != 2 else { continue } // Swfit Guard Statement
                        /* Like an if statement, guard executes statements based on a Boolean value of an expression. Unlike an if statement, guard statements only run if the conditions are not met. You can think of guard more like an Assert, but rather than crashing, you can gracefully exit.
                        */
    if counter != 5 {
        print(counter)
    }
    
}

var animals = ["chickens","cows","ducks"]
animals[1] = "geese"

var cuteness = [
    "chickens": "somewhat",
    "ducks":"cute",
    "geese":"scary"
]


cuteness["ducks"]
for animal in animals {
    animal
    cuteness[animal]
}

/*
func transmogrify(species: String) -> String {
    
    return "human"
}

transmogrify("duck")
*/

func transmogrify(species: String) -> Int {
    switch species {
    case "duck": return 0
    case "human": return 1
    default: return -1
    }
}

transmogrify("duck")
transmogrify("human")

var beautifulImage = [
    [3, 15, 3],
    [26, 3, 4, 8, 2],
    [14, 8, 22]
]

for i in 0..<beautifulImage.count {
    for j in 0..<beautifulImage[i].count {
        if beautifulImage[i][j] < 5 {
            beautifulImage[i][j] = 5
        }
    }
}

beautifulImage

func raiseLowerNumbers( inout inImage image : [[Int]], to number: Int) {
    for i in 0..<beautifulImage.count {
        for j in 0..<image[i].count {
            if image[i][j] < number {
                image[i][j] = number
            }
        }
    }
}
raiseLowerNumbers(inImage: &beautifulImage, to: 5)


let x : Double = 1

//let x : Int = 1.1
x

if true {
    print("xixi")
}

if(true) {
    
}
if true {
    
}

//let array = [1,2,2.5,3]
//let array: [Int] = [1,2,2.5,3] // error
//let array: [Int] = [1,2]

let array0:[Int] = []   // right
let array1 = [1,2,3,4] // right
let array2 = [1,2,2.5,3]
let array3: [Int] = [1,2]
let array4 = [Int]()


