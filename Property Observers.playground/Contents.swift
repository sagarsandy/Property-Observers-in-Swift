import UIKit

// Property Observers:

// The most loveble concept in swift..



// Declaring a variable in swift
var height : Double = 5.98

// Now how to executr some code block when the value of height is changed to something else...? There maybe some other concepts to achive this.. But here comes the magic in swift.. Property observers.. The most important topic while working with timer based applications.


var time : Int = 20 {
    
    willSet {
        print("This method will be called, just before the old value is overrided \(newValue)") // At this point still the vaue will be 20. newValue is a predefined variable for willSet method.
    }
    
    didSet {
        print("This method will be called once the value is changed to new value \(oldValue)") // oldValue is a predefined variable for didSet method
    }
}

time = 30

// How to get the old and new values in the code block

var newTime : Int = 25 {

    willSet(newValue){
        print("new value is \(newValue)")  // In the will set method,  you will get new value. You can change variable name to whatever you want in place of newValue. You don't even need to declare newValue in the function argument, it is pre-available. Suppose if you want to use some custom name, then you can rename it.
    }

    didSet(oldValue){
        print("old value is \(oldValue)")  // In the did set method, you will get old value.
    }
}

newTime = 35

// Working with some conditions

var stopWatch : Int = 40 {

    willSet(newValue) {
        if newValue > stopWatch {
            print("time is increased.. the clock is running fast")
        } else {
            print("time is decreased.. you've got some bonus time")
        }
    }

    didSet {
        if stopWatch == 60 {
            print("Time up buddy.. !!")
        }
    }
}

stopWatch = 45
stopWatch = 42
stopWatch = 60


