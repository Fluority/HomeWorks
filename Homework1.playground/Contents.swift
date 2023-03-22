import UIKit

/*
Exercise 1
 Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString: String = "I'm learning"
let secondString: String = "swift"
print(firstString, secondString, "!!!\n")


/*
Exercise 2.1
 Create a constant named myAge and assign it the value of your age.
*/

let myAge = 20

/*
Exercise 2.2
 Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears: Int = myAge+10

/*
Exercise 2.3
 Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear = 365.25

/*
Exercise 2.4
 Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed: Float = Float(myAgeInTenYears)*Float(daysInYear)

/*
Exercise 2.5
 Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is", myAge, "years. After 10 years, I will be", myAgeInTenYears, "years old. From the moment of my birth day have passed approximately", daysPassed, "days.\n")

/*
Exercise 3.
 Calculate triangle's area and perimeter.
 Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/

let AC = 8.0
let CB = 6.0
var AB = sqrt(AC*AC+CB*CB)
var area = AC*CB*0.5
var perimeter = AC+CB+AB
print("Area of triangle is", area, "and the perimeter is", perimeter, "\n")

/*
 Exercise 5.
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
*/

let currDay = 21
let currMonth = 3
let currYear = 2023

let birthDay = 26
let birthMonth = 4
let birthYear = 2002

let monthsInYear = 12
let daysInMarch = 31

var totalYearsFromBirth = currYear-birthYear-1
var totalMonthsFromBirth = currMonth-birthMonth+monthsInYear-1
var totalDaysFromBirth = currDay-birthDay+daysInMarch

// My birthday will be in 31 days!
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth)")
