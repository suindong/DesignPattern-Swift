//: Playground - noun: a place where people can play

import UIKit

class OpetrationManager {
    
    func doAllThings() {
        let a = OperationA()
        let b = OperationB()
        let c = OperationC()
        a.doSomething()
        b.doSomething()
        c.doSomething()
    }
}

class OperationA {
    func doSomething() {
        print("OperationA do something")
    }
}

class OperationB {
    func doSomething() {
        print("OperationB do something")
    }
}

class OperationC {
    func doSomething() {
        print("OperationC do something")
    }
}

// normal situation
let a = OperationA()
let b = OperationB()
let c = OperationC()
a.doSomething()
b.doSomething()
c.doSomething()

// facade pattern
let m = OpetrationManager()
m.doAllThings()




