//: Playground - noun: a place where people can play

import UIKit

var x = 4

var random = arc4random_uniform(6)

var result = x % random

if x == random {
    
    println("correcto!")
    
} else {
    
    println("Elije otra vez")
    
}
