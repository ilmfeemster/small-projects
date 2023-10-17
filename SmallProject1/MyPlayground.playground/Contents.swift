import UIKit

func isIdentical(_ s: String) -> Bool {
    var previousChar = s.first
    for character in s {
        if character != previousChar {
            return false
        }
        previousChar = character
    }
    return true
}

isIdentical("aaaaaaaaabaaaaa")
