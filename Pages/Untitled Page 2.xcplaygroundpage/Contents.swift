class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
    init() {
    }
}

struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let toby:Employee = Employee()
toby.name = "Toby"
toby.phoneNumber = "011-5678-1234"

var callTask = Task(title: "Call To Toby", time: 10*60, owner:me, participant:toby)


var reportTask = Task(title:"Report to Boss", time:nil, owner:me, participant: nil)

callTask.participant?.phoneNumber = "010-5678-1234"

