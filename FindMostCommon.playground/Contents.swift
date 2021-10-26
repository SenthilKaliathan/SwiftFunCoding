import UIKit

// Find Most common Elements
let colors = ["red", "green","blue","red","green","red"]
func findMostCommonElement() -> String {
    var outputDictionary = [String:Int]()
    for color in colors {
        outputDictionary[color] = (outputDictionary[color] ?? 0) + 1
    }
    let maxValueDictionary = outputDictionary.max { $0.value < $1.value }
    return maxValueDictionary?.key ?? ""
}

print(findMostCommonElement())
