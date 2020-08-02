import UIKit

var str = "Hello, playground"

func calculator(n1: Int, n2:Int, operation: (Int, Int) -> Int) -> Int{
    return operation(n1, n2)
}


func multiply(no1:Int, no2:Int) -> Int {
    return no1 * no2
}

//Standard way 1
calculator(n1: 3, n2: 4, operation: multiply(no1:no2:))

//Standard way 2
calculator(n1: 3, n2: 4, operation: multiply)

//Standard way 3
calculator(n1: 3, n2: 4, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

//Without input data type but with return type
calculator(n1: 3, n2: 4, operation: { (no1, no2) -> Int in
    return no1 * no2
})


//Without input data type and return type
calculator(n1: 3, n2: 4, operation: { (no1, no2) in
    return no1 * no2
})

//Without return keyword
calculator(n1: 3, n2: 4, operation: { (no1, no2) in
    no1 * no2
})

//Expressing in one line
calculator(n1: 3, n2: 4, operation: { (no1, no2) in no1 * no2 })

//Expressing using annonymous paramater name $0, $1 etc
calculator(n1: 3, n2: 4, operation: { $0 * $1})

//There is a rule in swift if the last paramert has closure then we can omit the last paramater name and can have the closure trailing at the end
// This is called trailing closure
let result = calculator(n1: 3, n2: 4, operation: { $0 * $1})

print(result)

let array = [1,2,3,4,5,6]

let res = array.map({$0 + 1})
let res1 = array.map{$0 + 1}
print(res1)
