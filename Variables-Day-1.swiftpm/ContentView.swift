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
            
        }
    }
}
