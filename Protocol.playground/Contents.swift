//: Playground - noun: a place where people can play

import UIKit

//  protocol Chagnes {
//  
//    func changesDone()
//    func cja()
//}
//
//extension Chagnes {
//  func changesDone() {
//    
//  }
//  func cja() {
//    
//  }
//}
//
//class A : Chagnes {
//  
//}

class a : NSObject, NSCopying {
  
  var property : Int  = 0;
  var anthoerProperty  : Int  = 1
  var testProperty :  Int = 2
  
  required override init() {
    
  }
  
  required init(model : a) {
    property = model.property
  anthoerProperty = model.anthoerProperty
  testProperty = model.testProperty
  }
  func copy(with zone: NSZone? = nil) -> Any {
      return type(of:self).init()
  }
}

let b = a()
 b.anthoerProperty = 10

let aCopy  = b.copy() as! a
 aCopy.anthoerProperty = 20

let bcopy = aCopy.copy() as! a
bcopy.anthoerProperty = 30

b

print(b.anthoerProperty )
print(aCopy.anthoerProperty )
print(bcopy.anthoerProperty)

