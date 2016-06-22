struct Estimate {
    var originalPrice:Double = 0.0
    var taxRate:Double = 0.1
    var totalPrice:Double {
        get{
            return originalPrice * (1.0 + taxRate)
        }
    }
}


class Employee2 {
    var name:String?
    var phoneNumber:String?
    var boss:Employee2?

    init() {
        self.name = ""
    }
    
    init (name:String) {
        self.name = name
    }

    convenience init (name:String, phone:String) {
        self.init(name:name)
        self.phoneNumber = phone
    }
    
    func testMethod(param:Int, param2:Int) -> Int {
        return 1
    }
}

let emp = Employee2(name: "Junil")
emp.testMethod(3, param2: 4)

