import UIKit
import Foundation


public struct Stack<T>{
    var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count:Int {
        return array.count
    }
    
    public mutating func push(_ element:T){
        array.append(element)
    }
    public mutating func pop() -> T{
        return  array.popLast()!
    }
    
    public var top:T? {
        return array.last
    }
    
   mutating  func reverseStack(){
    
    if !array.isEmpty {
        let x = array.popLast()!
        reverseStack()
        insertAtBottom(x)
    }
    }

    mutating func insertAtBottom(_ element:T){
        if array.isEmpty {
            array.append(element)
        }else {
            let a = array.popLast()!
            insertAtBottom(element)
            array.append(a)
        }
    }
}

var stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
print(stack.array)
print(stack.reverseStack())
print(stack.array)
