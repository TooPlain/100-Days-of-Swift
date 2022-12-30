import UIKit

struct Foods {
    var name: String
    var isFatty: Bool
    
    var fattyStatus: String {
        if isFatty {
            return "\(name) is an fatty food sadly"
        }else{
            return "\(name) is not a fatty food hoorah"
        }
    }
}

var pizza = Foods(name: "Pizza",isFatty: true)
var sandwich = Foods(name: "Sandwich",isFatty: false)
print(sandwich.fattyStatus)
print(pizza.fattyStatus)


struct Progress {
    var task: String
    var amt: Int {
        //runs everytime the property has changed.
        //willSet runs before a change but its rarely used.
        didSet {
            print("\(task) is now \(amt)% complete!")
        }
    }
}

var progress = Progress(task: "Loading space", amt: 0)
progress.amt = 25
progress.amt = 50
progress.amt = 100


//Structs can have functions within "Methods".
struct City {
    var pop: Int
    func collectTaxes() -> Int {
        return pop * 1000
    }
}

let london = City(pop: 9_000_420)
print(london.collectTaxes())

//Mutating methods
struct Person {
    var name: String
    
    mutating func makeAnon() {
        name = "Anon"
    }
}

var person = Person(name: "foods")
person.makeAnon()
print(person.name)

//Skipped Properties and Methods of Strings such as string.count string .hasPrefix .uppercased etc

//Inits
struct Usr {
    var uname: String
    
    init() {
        uname = "Anon"
        print("Creating a new user!")
    }
}

var user = Usr()
user.uname = "TooPlain"
print (user.uname)

//Lazy params
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Lazy_Person {
    var name: String
    lazy var famTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var eddy = Lazy_Person(name: "Eddy")
eddy.famTree

//Static Mehtods and props
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let eddys = Student(name: "eddy")
let taylor = Student(name: "Taylor")

print(Student.classSize)


//Skipped Access Control basically private/public identifiers eg private var foo: String
/*
 Only identify can access the var ID
 struct Person {
     private var id: String

     init(id: String) {
         self.id = id
     }

     func identify() -> String {
         return "My social security number is \(id)"
     }
 }
 */

/*
 You’ve made it to the end of the seventh part of this series, so let’s summarize:

     You can create your own types using structures, which can have their own properties and methods.
     You can use stored properties or use computed properties to calculate values on the fly.
     If you want to change a property inside a method, you must mark it as mutating.
     Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
     Use the self constant to refer to the current instance of a struct inside a method.
     The lazy keyword tells Swift to create properties only when they are first used.
     You can share properties and methods across all instances of a struct using the static keyword.
     Access control lets you restrict what code can use properties and methods.

 */
