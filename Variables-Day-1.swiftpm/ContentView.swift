import SwiftUI

struct ContentView: View {
    var strs = "Hello, Playground"
    
    var multiLine = """
This
is
a
multi-lines string
variable
"""
    var hereAreSomeNums = 420
    
    //const
    let crypto = "ponzi?"

    
    //Type Annotations
    let s = "I am a Const Str"
    let album: String = "Foo Fighters"
    let year: Int = 3001
    //Arrays
    let aArray = ["Food","Is","the","best!"]
    
    //Sets
    //In a Set there will be no duplicates and its unordered due to that nature it can't be accessed via a interger index
    let colours = Set(["red","green","blue"])
    
    //Tuples
    var name = (first: "Taylor" , last: "Swift")
    //Get via name.0 or name."first"
    
    
    //Dictionaries
    let heights = [
        "Taylot Swift": 1.78,
        "De Sheeran": 1.73
    ]
    
    
    //Empty Collections
    var teams = [String: String]()
    
    var results = [Int]()
    var words = Set<String>()
    

    
    //Alternativly
    var scoreser = Dictionary<String, Int>()
    
    //Enumerations
    enum Result {
        case succ
        case fail
    }
    
    //Enum raw
    enum Planet: Int {
        case mercury
        case venus
        case earth
        case mars
    }
    
    let earth = Planet(rawValue: 2)
    
    let result1 = Result.succ
    
    var body: some View {
        var NumToString = "Here are some ints \(hereAreSomeNums)"
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(strs)
            Text(multiLine)
            Text(NumToString)
            Text(crypto)
            Text(s)
            Text(album)
            Text("\(year)")
            //Text(colours.randomElement()!)
           
            
            //Dictionaries with a default
            Text("\(heights["Taylot Swifts", default: 0])")
             
        }
    }
}
