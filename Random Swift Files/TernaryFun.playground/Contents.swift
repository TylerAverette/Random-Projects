//: Playing with Ternary Expressions and Other Experiments

import UIKit


//: You can change these values as you see fit.

var a = 1
var b = 2
var c = 3

//: It's probably not a real good idea, but we can compute the min, max and median values using ternary expressions
var min, max, median : Int

min = a < b ? a < c ? a : c : b < c ? b : c

max = c < a ? b < a ? a : b : c < b ? b : c

 if c < a{
   if b < a{
      print("\(a) is the largest number. First Example")
   }
   else{
      print("\(b) is the largest number. First Example")
    }
 }
    else if c < b{
    print("\(b) is the largest number. First Example")
    }
    else{
    print("\(c) is the largest number. First Example")
    }

median = a >= b && a <= c || a >= c && a <= b ? a : a <= b && b <= c || a >= b && b >= c ? b : c

//: Generate equivalent if else expressions for these.
//min
if a < b {
    if a < c {
        print("\(a) is the smallest number. First Example")
    }
    else if b < c {
        print("\(b) is the smallest number")
    }
    else{
        print("\(c) is the smallest number.")
    }
}
//max
if c < a {
    if b < a {
        print("\(a) is the largest number. First Exmaple.")
    }
    else{
        print("\(b) is the largest number. First Example")
    }
}
else if c < b{
    print("\(b) is the largest number. First Example")
}
else{
    print("\(c) is the largest number. First Example")
}
//median
if a >= b && a <= c ||
    a >= c && a <= b {
    print("\(a) is the median number.")
}
else if a <= b && b <= c || a >= b && b >= c{
    print("\(b) is the median number. First Example")
}
else{
    print("\(c) is the median number.")
}

//: Here's another set, repeat using these expressions
min = a < b && a < c ? a : b < c ? b : c

max = b < a && c < a ? a : c < b ? b : c

median = a > b && a > c ? b > c ? b : c : a < b && a < c ? b < c ? b : c : a

//min
if a < b && a < c{
    print ("\(a) is the smallest number.")
}
else if b < c{
    print ("\(b) is the smallest number. Second Example")
}
else{
    print ("\(c) is the smallest number.")
}

// max
if b < a && a < c{
    print("\(a) is the largest number.")
}
else if c < b {
    print("\(b) is the largest number.")
}
else{
    print("\(c) is the largest number. Second Example")
}
// median
if a > b  && a > c{
    if b > c{
        print("\(b) is the median number.")
    }
}
else if a < b && a < c{
    if b < c{
        print("\(b) is the median number.")
    }
    else{
        print("\(a) is the median number.")
    }
}
//: Compare the above examples. Think about which seems clearest to you and why. No answer is required but we may discuss.
    // The top one seems the clearest, not sure why.

// I did the problem this way the first time, then I realized I was meant to use your method. This is the method that I believe is the best solution.

if a < b && a < c{
    print ("\(a) is the smallest number.")
    if b < c {
        print ("\(c) is the largest number.")
        print ("\(b) is the median number.")
    }
    else{
        print ("\(b) is the largest number.")
        print ("\(c) is the median number.")
    }
}
else if b < a && b < c{
    print("\(b) is the smallest number.")
    if a < c{
        print ("\(c) is the largest number.")
        print ("\(a) is the median number.")
    }
    else{
        print ("\(a) is the largest number.")
        print ("\(c) is the median number.")
    }
}
else{
    print ("\(c) is the smallest number.")
    if a < b{
        print ("\(b) is the largest number.")
        print ("\(a) is the median number.")
    }
    else{
        print ("\(c) is the largest number.")
        print ("\(b) is the median number.")
    }
}

//: Changing gears now ....
//: Integer math can't overflow without error, except you can overide with special operators
//: This next line sets a to the highest possible value (How many bits is that? And how many ones?)
a = Int.max

//: Try uncommenting this line to see the full error message.

//a = Int.max + 1 //EXC_BAD_INSTRUCTION

//: There is another plus operator in swift, look what it does.
a = Int.max &+ 1  //allow overflow a = Int.min after

a = Int.min
//a = Int.min - 1 //EXC_BAD_INSTRUCTION
a = Int.min &- 1  //allow underflow a = Int.max after


//: Something else now....
//: You can use binary notation and use _ to promote readability (the _ can't be after the b, however. )

//: bitwise operators:
//: ^ = XOR
//: & = bit and
//: | = bit or

a = 0b0011_1100
b = 0b0101_0101
c = a ^ b //bitwise xor
c = a & b //bitwise and
c = a | b //bitwise or


//: Can you display c as binary?
//: Of course. I'll work on it. You work on it. We'll compare solutions.

/*extension String {
    init<B: FixedWidthInteger>(fullBinary value: B) {
        self = value.words.reduce(into: "") {
            $0.append(contentsOf: repeatElement("0", count: $1.leadingZeroBitCount))
            $0.append(String($1, radix: 2))
        }
    }
}*/

/*extension String {
    init<B: (binary value: B) {
        self = value.words.reduce(into: "") {
            $0.append(contentsOf: repeatElement("0", count: $1.leadingZeroBitCount))
            $0.append(String($1, radix: 2))
        }
    }
}*/

extension String {
    init(binary value: Int){
        print(String(binary: c))
        switch value{
        case 0, Int.min:
            self = repeat("0", count: 63).reduce(value == 0  ? "o" : "1" , +)
        case 1...:
            repeat("0", value.leadingZeroBitCount).reduce("", +) + String(valuem readix(2))
        default:
            self = "1" + String( value ^ Int.min, radix:2)
        }
    }
}

//compare

print(String(-1, radix: 2))
print(String(fullBinary: -1))


//compare

print(String(-1, radix: 2))
print(String(fullBinary: -1))

//: Shift operators
//: Shifting in binary is like adding or removing zeroes in decimal except it's power of 2 rather than 10. (Note 10 is 2 in binary).
//: There are 10 kind of people in the world, those that understand binary and ....

c = 0b0001_0000
c = c << 2 //shift left (adding zeros) is like multiplying by 2, 4, 8, etc
c = c >> 1 //shift right (chopping zeroes) is like dividing by 2, 4, 8, etc
c = c ^ -1 //1's comp (xor with all 1's)
c = c + 1  //2's comp
c = c << 1 //signed shift left
c = c >> 2 //signed shift right

//: What's faster in hardware? Shifting or multiplication?

//: Some other tidbits I've run across
//: In a playground functionName is not well defined.
let fileName = #file
let functionName = #function
let lineNumber = #line


print ("Something funny occurred at \(fileName) \(lineNumber)")



//: Swift is cool, check this out.
//: Tradinally if you want to swap two variables (perhaps a and b) you have to go through temp. It's a classic pattern.

//: temp = a //preserve a
//: a = b    //write a
//: b = temp //write b from temp


//: swift brings tuples (up to 7-tuple, after that you have to create your own structure)
print("a:\(a)\tb:\(b)")
(a, b) = (b, a)
print("a:\(a)\tb:\(b)")


//: Rewrite the following block so that it uses no !'s
//: It's sorting a, b and c. Feel free to try other values.
a=3
b=2
c=1
print("a:\(a)\tb:\(b)\tc:\(c)")
if !(a < b && b < c) {
    if !(a < b) {
        (a, b, c) = (b, a, c)
    }
    if !(b < c) {
        (a, b, c) = (a, c, b)
    }
    if !(a < b) {
        (a, b, c) = (b, a, c)
    }
}
print("a:\(a)\tb:\(b)\tc:\(c)")




print("a:\(a)\tb:\(b)\tc:\(c)")
if !(a < b && b < c) {
    if !(a < b) {
        (a, b, c) = (b, a, c)
    }
    if !(b < c) {
        (a, b, c) = (a, c, b)
    }
    if !(a < b) {
        (a, b, c) = (b, a, c)
    }
}
print("a:\(a)\tb:\(b)\tc:\(c)")



