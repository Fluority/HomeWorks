import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period {
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
*/

let period = 5
let deposit: Double = 500000
let rate = 0.0215 //https://smartasset.com/investing/how-much-interest-can-500000-earn-per-year
var profit: Double = 0

for _ in 1...period {
    profit += deposit*rate
}

print("Amount of income after \(period) years will be \(profit + deposit) Eur. My total deposit will be \(profit) Eur!\n")
// Changed profit-deposit to profit+deposit to calculate the income.

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
*/

let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
var evenNumbers = [Int]()

for nr in numbers {
    if nr%2 == 0 && nr != 0 { // Let's assume 0 isn't nor even nor odd
        evenNumbers.append(nr)
    }
}

print("My even numbers are: \(evenNumbers)\n")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/

var count = 0
var tries = 100
var bool = false

for _ in 1...tries {
    let nr = Int.random(in: 0...12)
    count += 1
    
    if nr == 5 {
        print("Number 5 will be after \(count) shuffles. \n")
        bool = true
        break
    }
}

if bool == false {
    print("Number 5 wasn't found after \(tries) tries! \n")
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
*/

var climbed = 0
var numberOfDays = 0
let finish = 10

while climbed < finish {
    climbed += 2
    numberOfDays += 1
    if climbed >= finish {
        break
    }
    climbed -= 1
}

print("Bug will spend \(numberOfDays) days to reach top of the post.")
