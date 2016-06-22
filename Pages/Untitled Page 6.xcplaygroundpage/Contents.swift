func makeFunc() -> () ->() {
    let str = "Test"
    func displayStr() {
        print(str)
    }
    return displayStr
}

let myFunc = makeFunc()
myFunc()

func myAdder(x:Int) -> (Int) -> (Int) {
    return {
        (y:Int) in
        return x+y
    }
}

let result = myAdder(5)
let finalResult = result(2)

print(finalResult)