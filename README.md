# AlphaCamp_midTermExam

## app icon, launch screen
![Alt text](screenshots/home_screen.png?raw=true "home screen")
![Alt text](screenshots/launch_screen.png?raw=true "launch screen")

## main screen
![Alt text](screenshots/main_screen.png?raw=true "main screen")

## details screen
![Alt text](screenshots/details_screen.png?raw=true "details screen")
![Alt text](screenshots/details_screen2.png?raw=true "details screen2")

## webview screen
![Alt text](screenshots/web_screen.png?raw=true "web screen")

## signature screen, with input screen
![Alt text](screenshots/sign_screen.png?raw=true "sign screen")
![Alt text](screenshots/sign_input.png?raw=true "sign input screen")

## signature empty error, exceed allowance error
![Alt text](screenshots/sign_empty_error.png?raw=true "sign empty error screen")
![Alt text](screenshots/sign_exceed_error.png?raw=true "sign exceed error screen")

```swift
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
```
