//
//  CountingInTheAmazon.swift
//  
//
//  Created by Lucyna Galik on 10/07/2017.
//
//

import Foundation

/*
 The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:
 
 1 = anane
 2 = adak
 3 = adak anane
 4 = adak adak
 5 = adak adak anane
 6 = adak adak adak
 7 = adak adak adak anane
 8 = adak adak adak adak
 
 Take a given number and return the Arara's equivalent.
*/

func countArare(_ n: Int) -> String {
    if n == 0 {
        return ""
    } else {
        let result = String(repeating: "adak ", count: n/2) + String(repeating: "anane ", count: n%2)
        return result.substring(to: result.index(result.endIndex, offsetBy: -1))
    }
}
