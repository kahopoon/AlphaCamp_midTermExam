//: Playground - noun: a place where people can play
//import UIKit

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    //combine to collection set so as to remove duplicates
    var fullArray = Array(Set<Int>(array1 + array2))
    
    //O(n^2) insertion sort
    //outter O(n)
    for i in 1...fullArray.count-1 {
        //temp save for swap
        let temp = fullArray[i]
        var k = i - 1
        //inner O(n)
        while k >= 0 && fullArray[k] > temp {
            fullArray[k+1] = fullArray[k]
            k -= 1
        }
        //if swapped, k+1 will be original k, place temp back to it. if not swapper, just equal i = i XD
        fullArray[k+1] = temp
    }
    return fullArray
}

// test
sortArray([1,51,65,4,2,5,3], array2: [2,4,6,74,1,3])
