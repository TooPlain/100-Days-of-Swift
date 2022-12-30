import UIKit

let driving = {
    print("i'm driving in my car")
}

driving()

//Accepting params in a closure
let drivings = { (place: String) in
    print("I'm going to \(place) in my car!")
}

drivings("London")

let drivingWithRet = { (place: String) -> String in
    return "I'm going to \(place) in my whip!"
}

let msg = drivingWithRet("Berlin")
print(msg)

//Using a closure as a parameter
func travel(action: () -> Void) {
    print("I'm getting ready!")
    action()
    print("I arrived")
}

travel(action: driving)

//Trailing Closure Syntax
travel {
    print("I'm driving in my whip")
}


//Closures with multi paras being called via trailling closure.
func travelWithData(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("Singapore", 90)
    print(description)
    print("I arrived!")
}

travelWithData {
    "I'm going to \($0) at \($1) miles per hour!"
}

//Returning closures -> return val -> closure return value
func travelRet() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let res = travelRet()
res("Capital")

//Real intresting stuff here never personally dealt with closures.


/*
 You’ve made it to the end of the sixth part of this series, so let’s summarize:

     You can assign closures to variables, then call them later on.
     Closures can accept parameters and return values, like regular functions.
     You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
     If the last parameter to your function is a closure, you can use trailing closure syntax.
     Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
     If you use external values inside your closures, they will be captured so the closure can refer to them later.

 */
