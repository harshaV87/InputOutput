//
//  Algorithm.swift
//  InputOutput
//
//  Created by Venkata harsha Balla on 7/21/21.
//

import Foundation

class Calculation {
    
    static func removeRepeatingCharacters(_ input: String) -> String {
        
        // converting the string to an array of character string elements so that we can work on the operations
        
        let arrayChar = input.map{String($0)}
        
        // Index i to keep a count of the index we are working on in the while loop, tempChar is the temporary variable that stores the current index value to compare with the next and finalArray is the array that will hold the values of the new array that are added to it and to be returned for further oprations.
        
        var i = 0
        var tempChar = ""
        var finalArray = [String]()
        
        // Using a while loop to traverse the array and compare the elements to the next. The index is taken until i - 2 to prevent the i from going out of bounds and the last remaining element will be added at the end
        // the logic is that we create a variable that will be constantly checking against its next index value and it only gets added to the final array if its value is different from the current index value.
        
        while i <= arrayChar.count - 2 {
            tempChar = arrayChar[i]
            i += 1
            if tempChar != arrayChar[i]{
            finalArray.append(tempChar)
            tempChar = arrayChar[i]
            }
            if i == arrayChar.count - 1 {
             finalArray.append(tempChar)
            }
        }
        
        // in order to also check and include spaces and to have only one element if it is a repeat before and after the space, a new array is created and the index is saved if the repeating elements before and after that index are the same, then that index is used to actually remove the element next to the space if it is a repeat.
        // UltimateArray is the output that is to be given as output and indexToBeRemoved is just and index that is to be removed. At the end the array is joined to output a string.
        var ultimateArray = [String]()
        var indexToBeRemoved = 0
        for i in 0..<finalArray.count {
            if finalArray[i] == " " && finalArray[i - 1] == finalArray[i + 1] {
                ultimateArray.append(finalArray[i])
                indexToBeRemoved = i + 1
            } else if finalArray[i] == " " && finalArray[i - 1] != finalArray[i + 1] {
                ultimateArray.append(finalArray[i])
            } else {
                ultimateArray.append(finalArray[i])
            }
        }
        if indexToBeRemoved != 0 {
            ultimateArray.remove(at: indexToBeRemoved)
        }
        return ultimateArray.joined()
        
    }
    
    static func findDirectoryPath(_ givenString: String) -> String {
        
        // converting the string to an array so we can perform operations on each element and typecasting it to a string element. Variable i is created to cope with the while loop while traversing therough the arrayString. Since we have to work with a set of elements such as ./ or ../, we create 2 different arrays to store the values to determine the operations that need to be performed with the consequitive elements
        
        var arrayString = givenString.map {String($0)}
        if arrayString.last == "." {
            arrayString.append(" ")
        }
        var i = 0
        var actualArray = [String]()
        var tempVarArray = [String]()
        
        // we are looping through all the elements in the array and if we have any , . / or " ", coming in we write a logic so we can get a proper output. For instance if we have two dots and 1 /, we remove the last element in the actualArray so as to account for the directory change. The rest of the logic is self explanatory and at the end the actualArray is joined to get the output in string
        
        while i <= arrayString.count - 1 {
            if (arrayString[i] == ",") ||  (arrayString[i] == ".") || (arrayString[i] == "/") || (arrayString[i] == " "){
                if (arrayString[i] == ",") && (arrayString[i + 1] != "."){
                    actualArray.append("/")
                } else if (arrayString[i] == ",") && (arrayString[i + 1] == ".") && (arrayString[i + 2] == "."){
                    actualArray.append(arrayString[i])
                    } else if (arrayString[i] == ",") && (arrayString[i + 1] == ".") && (arrayString[i + 2] != ".") {
                        // do nothing
                }
            
                if (arrayString[i] == ".") && !tempVarArray.contains("."){
                    tempVarArray.append(arrayString[i])
                } else if (arrayString[i] == ".") && (arrayString[i + 1] == "/") && tempVarArray.contains(".") {
                    if actualArray != [] {
                        actualArray.removeLast()
                        if actualArray != [] {
                        actualArray.removeLast()
                            }
                    }
                    tempVarArray.removeAll()
                } else if (arrayString[i] == "/") && (arrayString[i - 1] == ".") && (arrayString[i - 2] == "."){
                } else if (arrayString[i] == "/") && (arrayString[i - 1] != ".")
                {
                    actualArray.append(arrayString[i])
                }
            } else {
                actualArray.append(arrayString[i])
            }
            i += 1
        }
        return actualArray.joined()
    }

    
}
