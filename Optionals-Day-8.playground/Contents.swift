import UIKit

//Using nil would be good for init when we don't know the users input. among others
var age: Int? = nil

age = 42

//Intresting kinda of reminds me of a null check if statement.
//Using a guard let statement would allow the unwrap variable to stay around!
//Forcing a unwrap or conversion via a ! at the end of the line!

if let unwrap = age {
    print("\(unwrap) is this old")
}else {
    print("Not available")
}


//Implicit unwrapped optionals
let foo: Int! = nil

//Therefore we wouldn't need to use a if let or guard let statement
//let user = username(for: 15) ?? "Anonymous" ||if the param 15 doesn't return a value and is nil it will set user with anon.


//Optional Chaining
let names = ["FooBarr","LKeet","Soap"]

//if names(0) is not valid swift won't excute uppercased and will set beatsby as nil
let beatsby = names.first?.uppercased()


//QUESTION MARKS ARE IMPORTANT!!!!!
//So using ? on a init within a struct will mean that we can return nil to who ever called. aka failable inits

/*
 You’ve made it to the end of the tenth part of this series, so let’s summarize:

     Optionals let us represent the absence of a value in a clear and unambiguous way.
     Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
     You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
     Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
     You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
     Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
     You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
     If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
     You can use typecasting to convert one type of object to another.

 */
