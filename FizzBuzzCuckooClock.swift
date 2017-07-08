//
//  FizzBuzzCuckooClock.swift
//  
//
//  Created by Lucyna Galik on 08/07/2017.
//
//

/*
When a minute is evenly divisible by three, the clock will say the word "Fizz".
When a minute is evenly divisible by five, the clock will say the word "Buzz".
When a minute is evenly divisible by both, the clock will say "Fizz Buzz", with two exceptions:
On the hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo bird will come out and "Cuckoo" between one and twelve times depending on the hour.
On the half hour, instead of "Fizz Buzz", the clock door will open, and the cuckoo will come out and "Cuckoo" just once.
With minutes that are not evenly divisible by either three or five, at first you had intended to have the clock just say the numbers ala Fizz Buzz, but then you decided at least for version 1.0 to just have the clock make a quiet, subtle "tick" sound for a little more clock nature and a little less noise.
*/

import Foundation

func fizzBuzzCuckooClock(_ time: String) -> String {
    
    let hour = Int(time.substring(to: time.index(time.startIndex, offsetBy: 2)))
    let minute = Int(time.substring(from: time.index(time.endIndex, offsetBy: -2)))
    
    
    switch minute! {
    case 0:
        if hour! % 12 == 0 {
            return "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
        } else {
            let result = String(repeating: "Cuckoo ", count: hour!%12)
            return result.substring(to: result.index(result.endIndex, offsetBy: -1))
        }
    case 30:
        return "Cuckoo"
    case 15, 45:
        return "Fizz Buzz"
    case 5, 10, 20, 25, 35, 40, 50, 55:
        return "Buzz"
    case 3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48, 51, 54, 57:
        return "Fizz"
    default:
        return "tick"
    }
}
