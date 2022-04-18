//task1
func itemPrice(itemName: String) -> Int? {
    if dictionaryStock[itemName] != nil && dictionaryStock[itemName] != 0 {
        return dictionaryPrice[itemName]!
    } else {
        return nil
    }
}

var dictionaryStock = ["Milk": 0, "Bread": 35, "Cookies": 100, "Ice-cream": 73]
var dictionaryPrice = ["Milk": 20, "Bread": 13, "Cookies": 15, "Ice-cream": 20]


var item1 = itemPrice(itemName: "Milk")
var item2 = itemPrice(itemName: "Bread")
var item3 = itemPrice(itemName: "Butter")

if let myItem = item1 {
    print(myItem)
} else {
    print("We don't have this item on the stock")
}

if let myItem = item2 {
    print(myItem)
} else {
    print("We don't have this item on the stock")
}

if let myItem = item3 {
    print(myItem)
} else {
    print("We don't have this item on the stock")
}

//task 2
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if ram > 0 && yearManufactured > 1970 && yearManufactured < 2021 {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
    
}

let macbookProM1 = Computer(ram: 8, yearManufactured: 2020)
let calculator = Computer(ram: 0, yearManufactured: 1960)

if let myComputer = macbookProM1 {
    print("My computer has \(myComputer.ram) gb of RAM and it was manufactured in \(myComputer.yearManufactured)")
}

if let myComputer = calculator {
    print("My computer \(myComputer.ram) gb of RAM and it was manufactured in \(myComputer.yearManufactured)")
}

//task 3
var myCollection: [Any] = [2.99, 3.14, 5, 8, "Hi", "Hello", true, false]

print("My collection have elements: \(myCollection)")

for item in myCollection {
    if let element = item as? Int {
        print("Ціле число має значення \(element)")
    } else if let element = item as? Double {
        print("Десяткове число має значення \(element)")
    } else if let element = item as? String {
        print("String має значення \(element)")
    } else if let element = item as? Bool {
        print("Bool число має значення \(element)")
    }
}

//task 4
struct Student {
    var name: String?
    var carNumber: String?
    var examMark: Int?
    
    func description() {
        if name != nil {
            print("Student's name is \(name!)")
        } else {
            return
        }
        if carNumber != nil {
            print("\(name!) has a car with a car number: \(carNumber!)")
        } else {
            print("\(name!) doesn't have a car")
        }
        if examMark != nil {
            print("\(name!) was on the exam and got \(examMark!)")
        } else {
            print("\(name!) missed exam")
        }
    }
}

let student1 = Student(name: "Andrew", carNumber: nil, examMark: 10)
let student2 = Student(name: "John", carNumber: "WAULFAFH5DN038425", examMark: nil)
let student3 = Student(name: "Monika", carNumber: nil, examMark: 9)
let student4 = Student(name: "Jack", carNumber: "1XKAD49X78J217426", examMark: nil)
let student5 = Student(name: "Anthony", carNumber: nil, examMark: 7)

student1.description()
student2.description()
student3.description()
student4.description()
student5.description()


