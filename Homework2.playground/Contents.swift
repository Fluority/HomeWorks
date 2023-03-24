import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
*/

var a: Float = 3.14
var b: Float = 42.0
var c: Double = Double(a+b)
print(c)
print(String(format: "%.2f", c)) // Saīsināts
print("")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
*/

var numberOne: Int = 5
var numberTwo: Int = 3
let c1: Float = Float(numberOne/numberTwo)
let c2: Float = Float(numberOne%numberTwo)
print("When dividing \(numberOne) by \(numberTwo), the result is \(c1), the remainder is \(c2).\n")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
*/

let macPrice = 1000
let mac5Price = 900
let mac10Price =  850
var price = 0
var totalSum = 0
var qty = 9

if qty >= 10 {
    price = mac10Price
} else if qty >= 5 {
    price = mac5Price
}

totalSum = price * qty
print("New \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur.\n")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
*/

let userInputAge = "33a"
if Int(userInputAge) != nil {
    print("The age can be converted to an integer.\n")
} else {
    print("The age cannot be converted to an integer.\n")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
*/

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy" // Jābūt MM nevis mm
let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "26.04.2002"
let myBirthDay = formatter.date(from: myBirthDateString) ?? Date()

var totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDay, to: currentDate).year ?? 0 // Ja nav ??, tad būs Optional()
var totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDay, to: currentDate).month ?? 0
var totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDay, to: currentDate).day ?? 0
if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Please change the date.\n")
} else {
    print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed.\n")
}

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
*/

let monthOfBirth = calendar.component(.month, from: myBirthDay)

switch monthOfBirth {
case 1...3:
    print("I was born in the 1st quarter.")
case 4...6:
    print("I was born in the 2nd quarter.")
case 7...9:
    print("I was born in the 3rd quarter.")
case 10...12:
    print("I was born in the 4th quarter.")
default:
    print("Month of birth must be from 1 to 12!")
}
