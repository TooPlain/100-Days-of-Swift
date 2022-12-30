import SwiftUI

let firstScore = 42
let secondScore = 1337

let total = firstScore + secondScore
let diff = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = firstScore % 13


let meaningOfLife = 42
let doubleMeaning = 42+42

let fakers = "Fakers Gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Applez"]
let secHalf = ["Steve", "Jobs"]
let legend = firstHalf + secHalf

//Compounds
var score = 100

let firstCard = 11
let secCard = 10

//Switch case loop exists you already know alot of this is repeetive to other langs so i will omit it when I believe its quite similar to other langs

//This would be something new to me
///let scores = 85
/**
switch scores {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}**/

/*
 You’ve made it to the end of the third part of this series, so let’s summarize:

     Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
     There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
     You can use if, else, and else if to run code based on the result of a condition.
     Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
     If you have multiple conditions using the same value, it’s often clearer to use switch instead.
     You can make ranges using ..< and ... depending on whether the last number should be excluded or included.

 */



@main
struct MyApp: App {
    //I don't understand why this would be consider invalid.
    //score -= 56;
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
