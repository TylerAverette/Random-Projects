import UIKit

var str = "Hello, playground"
// Question 1

let pi = 3.14159265
let fullName = "Christopher Tyler Averette"
print("\t \n \n  \" ")

//Question 2

func seven() -> Int {return 7}

func disney() -> String {return "Goofy"}

// Question 3

func min(num1 n1: Int, num2 n2: Int) -> Int {
    
    if n1 < n2{ return n1}
        
    else {return n2}
}
min(num1: 50, num2: 10)


func compose(strings s1: String, _ s2:  String) -> String{
    
    return ("\(s1) \(s2)")
    
}

//Question 4

func median(_ num1: Int,_ num2: Int,_ num3: Int) -> Int{
    if num1 >= num2 && num1 <= num3 ||
        num1 >= num3 && num1 <= num2 {
        return num1
    }
    else if num1 <= num2 && num2 <= num3 || num1 >= num2 && num2 >= num3{
        return num2
    }
    else{
        return num3
    }
}

median(6, 4, 5)
median(43, 88, 55)
median(12, 22, 16)

// Question 5

compose(strings: "first", "second")

func isLeap(_ year: Int) -> Bool{
    
    var leapYear: Bool = false
    if year % 4 == 0{
        if year % 100 != 0{
            leapYear = true
        }
        else if year % 400 == 0{
            leapYear = true
        }
    }
     return leapYear
}
isLeap(1600) // true
isLeap(1700) // false
isLeap(2000) // true
isLeap(2004) // true
isLeap(2019) // false
isLeap(2100) // false

