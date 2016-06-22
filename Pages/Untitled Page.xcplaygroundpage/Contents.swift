//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground 👱🏾"

var str2:String

let str3 = 1

print(str3)

let name:String = "seongkwan"
var greeting = "Hello"
greeting += " " + name

let characters = name.characters
let count = characters.count

let url = "www.codershigh.com"
let hasProtocol = url.hasPrefix("http://")
let hasCom = url.hasSuffix(".com")

name
count
print("\(name) has \(count) characters")

var currentSpeed0:Int = 110
currentSpeed0 += 10
currentSpeed0 += Int(20.5)

let pi = 3.14
let halfPi = 3.14/2
let divider = 2
let half = 3.14 / Double(divider)

let intmax = Int.max
let uUntMax = UInt.max

let time1 = (9, 0, 48)
time1.0
time1.1
time1.2

let time2:(h:Int, m:Int, s:Int, day:String)
time2 = (11, 51, 5, "today")
time2.h

let time3 = (time1, time2)

let (start, end) = time3
let endHour = end.h

print(time3.0.0)

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((9,10,11), (17,8,21))
print("We Study until \(today.end.h - today.start.h) hours today")


var meetingRoom:Array<String> = ["Banksy", "Rivera, Kahlo", "Picasso", "Cezanne", "Martise"]
var group:[Int] = [10, 8, 14, 9]
meetingRoom += ["Renoir"]


let currentSpeed = 120
var speedHistory:[Int] = []
speedHistory += [currentSpeed]

let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup

var testS = "testS"
var testN = testS
testS = "ppp"

var roomCapacity:[String: Int] = ["B":4, "R":8, "K":8, "P":20, "C":10, "M":5]

roomCapacity["R"] = 40
roomCapacity["M"] = 20
roomCapacity["K"] = -4

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let subway2:Set = ["시청", "을지로입구", "을지로3가", "을지로4가", "동대문", "신당", "왕십리", "한양대", "역삼", "강남"]
 subway2.count
let subway3:Set = ["지축", "구파발", "연신내", "불광", "녹번", "홍제", "무악재", "을지로3가"]
subway3.count

let transfer = subway2.intersect(subway3)
transfer.count
let notTransfer = subway2.subtract(subway3)
notTransfer.count
let union = subway2.union(subway3)
union.count
let exOR = subway2.exclusiveOr(subway3)
exOR.count

let newtransfer = subway2.intersect(subway3)

if newtransfer.count > 0 {
    print("환승역은 \(newtransfer) 입니다.")
    
} else {
    print("환승역은 없습니다")
}

for station in subway2 {
    print("이번역은 \(station) 입니다")
}

for i in 0...3
{
    print ("\(i+1) 번째 회의실은 \(roomNames[i])입니다")
    
}

for i in 0..<4
{
    print ("\(i+1) 번째 회의실은 \(roomNames[i])입니다")
    
}

for _ in 0...3
{
    print ("입니다")
    
}


for(roomName, capacity) in roomCapacity {
    var t = "\(roomName) 의 정원은 \(capacity) 명입니다."
    print(t)
}

for(roomName, capacity) in roomCapacity {
    let roomDescription : String
    switch capacity {
    case 4:
        roomDescription = "\(roomName) 은 스터디 룸이며 정원은 \(capacity)명입니다."
    case 5...10:
        roomDescription = "\(roomName) 은 팀 세미나 룸이며 정원은 \(capacity)명입니다."
    case 11...30:
        roomDescription = "\(roomName) 은 그룹 세미나 룸이며 정원은 \(capacity)명입니다."
    case let caseCapacity where caseCapacity > 30:
        roomDescription = "\(roomName) 의 정원은 \(capacity)명이며 별도의 신청이 필요합니다."
    default:
        roomDescription = "\(roomName) 의 정보를 다시 확인해주세요."
    }
    print("\(roomDescription)")
}

let cheetah:Int = 0

let robotCheetah:Int? = nil

let robot2:Optional<Int>
robot2 = Optional(1)


print("I have \(cheetah) cheetah in my house")

if robotCheetah != nil {
    print("I have \(robotCheetah) robot cheetah in my house")
}

var title:String = "storyboard"
var ratings : [Double]? = nil
var supportURL : String? = nil

ratings = [1,3]

print ("\(title) has \(ratings!.count) rating. \r\n support web page : \(supportURL)")

supportURL = "www.code.com"
var bookDescription: String = "\(title)"
if ratings != nil {
    bookDescription += "has \(ratings!.count) ratings"
}

if supportURL != nil {
    bookDescription += "\r\n support web page : \(supportURL!)"
}

print ("\(bookDescription)")

if let theRatings = ratings {
    bookDescription += "has \(theRatings.count) ratings"
}

if let theURL = supportURL {
    bookDescription += "\r\nsupport web page: \(theURL)"
}

var supportingURL : String! = nil
supportingURL = "www.xx.com"
bookDescription += "\r\nsupport web pages : \(supportingURL)"

var i :Int? = 45
let i2 = i

func ratingRecord(history:[Double]) -> (average:Double, min:Double, max:Double) {
    var sum = 0.0, min = history[0], max = history[1]

    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    
    let average = sum / Double(history.count)
    return (average, min, max)
}

ratings = [4.5, 3.0, 5.0, 2.5]

bookDescription = "\(title)"

if let theRatings = ratings {
    let record = ratingRecord(theRatings)
    bookDescription += " has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}


struct Task
{
    var title:String?
    var time:Int?
}

var callTask = Task(title: "Call to Randy", time: 10*60)
var reportTask = Task()
reportTask.title = "report to boss"


struct Task2
{
    var title:String
    var time:Int?
}

var callTask2 = Task2(title: "Call to Randy", time: 10*60)
var reportTask2 = Task2(title: "Report to Boss", time: nil)

var todayTask:[Task2] = []
todayTask += [callTask2, reportTask2]

todayTask[1].time = 15*60
callTask.title = "Call To Toby"

print("today task = \(todayTask) \r\n callTask = \(callTask)")







