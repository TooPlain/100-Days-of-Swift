import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            Group {
                Text("First Score: \(firstScore)")
                Text("second Score: \(secondScore)")
                Text("total: \(total)")
            }
            Group {
                Text("Difference: \(diff)")
                Text("Product: \(product)")
                Text("Divided: \(divided)")
                Text("Remainder: \(remainder)")
            }
            Group {
                //Welp thats one way lmao
                Text(legend.formatted())
                
                if (firstCard + secCard == 21) {
                    Text("Blackjack!")
                }
            }
            
        }
    }
}
