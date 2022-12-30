import UIKit

let count = 1...15

for number in count {
    print("Number is \(number)")
}


let albums = ["red","1989","Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Player are gonna ")
//Loops 5 times
for _ in 1...5 {
    print("play")
}


var num = 1

while num <= 20 {
    print(num)
    num += 1
}

print("I'm coming to get you!")


//New concept Repeat

var repeats = 1

repeat {
    print(repeats)
    repeats += 2
} while repeats <= 24
            
print("Let's go!")

//Code is always top bottom executing


//Breaks
var countDown = 10
while countDown >= 0 {
    print (countDown)
    countDown -= 1
    
    if(countDown == 4) {
        print("Ehh nevermind abort!")
        break
    }
}

print("we're off!")


//Break out of multi depth loop in one!
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Skipping items in a loop
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

/*
 You’ve made it to the end of the fourth part of this series, so let’s summarize:

     Loops let us repeat code until a condition is false.
     The most common loop is for, which assigns each item inside the loop to a temporary constant.
     If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
     There are while loops, which you provide with an explicit condition to check.
     Although they are similar to while loops, repeat loops always run the body of their loop at least once.
     You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
     You can skip items in a loop using continue.
     Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!

 */


