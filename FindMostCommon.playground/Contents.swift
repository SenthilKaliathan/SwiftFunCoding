import UIKit

// Find Most common Elements

func findMostCommonElement(_ input:[String]) -> String {
    var outputDictionary = [String:Int]()
    for color in input {
        outputDictionary[color] = (outputDictionary[color] ?? 0) + 1
    }
    let maxValueDictionary = outputDictionary.max { $0.value < $1.value }
    return maxValueDictionary?.key ?? ""
}
let colorsInput = ["red", "green","blue","red","green","red"]
print(findMostCommonElement(colorsInput))
