//
//  main.swift
//  Bag_Stack_Queue
//
//  Created by Ts SaM on 24/7/2023.
//

import Foundation


/*---------------- Bag -----------------*/
print("------------ BAG ------------")
var numsBag = Bag<Int>()

for i in 0..<10 {
    numsBag.add(i)
}

for n in numsBag {
    print(n)
}

print("---------------------------")
/*---------------- Stack -----------------*/
print("------------ STACK ------------")
var numsStack = Stack<Int>()

for i in 0..<10 {
    numsStack.push(i)
}

for n in numsStack {
    print(n)
}
print("---------------------------")
/*---------------- Stack -----------------*/
print("------------ QUEUE ------------")
var numsQueue = Queue<Int>()

for i in 0..<10 {
    numsQueue.enqueue(i)
}

for n in numsQueue {
    print(n)
}
print("---------------------------")
