import UIKit

    protocol Identifiable {
        var id: String { get set}
    }
    
    struct User: Identifiable {
        var id: String
    }
    
    func displayID(card: Identifiable) {
        print ("My ID is \(card.id)")
    }


var cpp = User.init(id: "43123")

displayID(card: cpp)

//Pretty cool ! it's Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let num = 26
num.squared()


//Protocol Extensions
extension Collection {
    func summarize() {
        print ("There are \(count) of us: ")
        
        for name in self {
            print(name)
        }
    }
}


let langs = ["C++","Java","C#","Python"]
let inprogress = Set(["Python","Swift","Xaml"])

langs.summarize()
inprogress.summarize()


/*
 You’ve made it to the end of the ninth part of this series, so let’s summarize:

     Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
     You can build protocols on top of other protocols, similar to classes.
     Extensions let you add methods and computed properties to specific types such as Int.
     Protocol extensions let you add methods and computed properties to protocols.
     Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.


 */
