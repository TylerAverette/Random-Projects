//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print ("Hello, World!")
print (str)

let http404error = (404, "Not Found")

let (statusCode, statusMessage) = http404error

let (justTheStatusCode, _) = http404error
print ("The status code is \(justTheStatusCode)")

print ("The status code is \(http404error.0)")
print ("The status code is \(http404error.1)")

