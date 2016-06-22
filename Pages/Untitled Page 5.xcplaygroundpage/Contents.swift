func inOutFunc1(i:Int, inout v:Int) {
    v = v + 12
}

var intVal:Int = 12
inOutFunc1(1, v: &intVal)
print(">> \(intVal)")

func inOutFunc2(inout v:String) {
    v += " Engine"
}

var strVal:String = "Super"
inOutFunc2(&strVal)
print(">> \(strVal)")




