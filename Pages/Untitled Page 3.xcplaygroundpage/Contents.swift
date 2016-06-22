class Employee {
    var name:String?
    var phoneNumber:String?
    var boss:Employee?
    
}


struct Task {
    var title:String
    var time:Int?
    
    var owner:Employee
    var participant:Employee?
    
    var type:TaskType
    
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var TypeTitle:String {
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                
                return titleString
            }
        }
    }
    
    init (type:TaskType, owner:Employee) {
        self.type = type
        self.title = type.TypeTitle
        self.owner = owner
        self.time = nil
        self.participant = nil
    }
}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-1234-5678"

let toby:Employee = Employee()
toby.name = "Toby"
toby.phoneNumber = "011-5678-1234"

var callTask = Task(type:.Call, owner:me)

var reportTask = Task(type:Task.TaskType.Report, owner:me)

callTask.participant?.phoneNumber = "010-5678-1234"

callTask.type.TypeTitle

