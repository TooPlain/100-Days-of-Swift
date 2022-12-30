import UIKit

func printME(s: String, i: Int) {
    let message = s
    print(message, (i))
}

printME(s: "Fuck Yeah!",i: 420)

//Return data from a function
// If returning multiple values this would be where a tuple would be perfect for use.
func squareRoot(num: Int) -> Int {
    return num * num
}

let res = squareRoot(num: 42)
print(res)

//We can provide two names/labels for each parameter
func sayHi(to name: String) {
    print("Hello, \(name)!")
}
//More useful for easy reading of the code I suppose.
sayHi(to: "Food")

//Declaring a function like this omits the use of the label so instead of func(Label: value) we can func(value)
func greet(_ person: String) {
    print("Hello, \(person)!")
}

func greet(_ person: String,_ nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Foods")

greet("Foods",false)

//I think I will find myself omiting labels alot in the future.

//Variadic Funcs we can pass alot of the same type variables with out delcaring a set amount of params it appears.
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 4,5,3,478,36,418,3,1)

//Throwing shit ;P
enum PasswordError: Error {
    case obvious
}

func chkPass(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}
do {
    try chkPass("password")
    print("we good")
}
catch {
    print("Too easy try again!")
}
        
func doubleInPlace(num: inout Int) {
    num *= 2
}

var myNum = 10
doubleInPlace(num: &myNum)

//Ahh functions with some new school tricks nice!

/*
 You’ve made it to the end of the fifth part of this series, so let’s summarize:

     Functions let us re-use code without repeating ourselves.
     Functions can accept parameters – just tell Swift the type of each parameter.
     Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
     You can use different names for parameters externally and internally, or omit the external name entirely.
     Parameters can have default values, which helps you write less code when specific values are common.
     Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
     Functions can throw errors, but you must call them using try and handle errors using catch.
     You can use inout to change variables inside a function, but it’s usually better to return a new value.

 */
