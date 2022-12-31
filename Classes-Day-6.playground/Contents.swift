import UIKit

 class Foo {
    var name: String
    var bar: String
    func makeNoise(name: String) {
        print("\(name) is growling")
    }
    
    init(name: String, bar: String) {
        self.name = name
        self.bar = bar
    }
     deinit {
         print("\(name) is no more!")
     }
    
}

//Inheritance
final class FooBar: Foo {
    override func makeNoise(name: String) {
        print("\(name) is snoring")
    }
    init(){
        super.init(name: "FooBar", bar: "Uptown")
    }
    deinit {
        print("\(name) is no more!")
    }
}


let foobar = Foo(name: "FooBar", bar: "Downtown")
let foos = FooBar()

foobar.makeNoise(name: foobar.name)
foos.makeNoise(name: foos.name)

//class instance when copy via = operator leads to the newly created variable to be a ref to memory therefore if there is any changes to the newly copied variable it will change the original variable.
//eg var class1copy = class1



/*
 You’ve made it to the end of the eighth part of this series, so let’s summarize:

     Classes and structs are similar, in that they can both let you create your own types with properties and methods.
     One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
     You can mark a class with the final keyword, which stops other classes from inheriting from it.
     Method overriding lets a child class replace a method in its parent class with a new implementation.
     When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
     Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
     Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.

 */
