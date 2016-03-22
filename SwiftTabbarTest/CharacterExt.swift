//
//  CharacterExt.swift
//  SwiftTabbarTest
//
//  Created by hanJianXin on 15/11/13.
//  Copyright (c) 2015年 hanJianXin. All rights reserved.
//

import Foundation

extension Character {
    enum Kind {
        case Vowel, Consonant, Other
    }
    var kind: Kind {
        switch String(self).lowercaseString {
        case "a", "e", "i", "o", "u":
            return .Vowel
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            return .Consonant
        default:
            return .Other
        }
    }
}

//func printLetterKinds(word: String) {
//    print("'\\(word)' is made up of the following kinds of letters:")
//    for character in word {
//        switch character.kind {
//        case .Vowel:
//            print("vowel ")
//        case .Consonant:
//            print("consonant ")
//        case .Other:
//            print("other ")
//        }
//    }
//    print("\n")
//}

