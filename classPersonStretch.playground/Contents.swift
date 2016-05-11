//: Playground - noun: a place where people can play

import Cocoa

class Person: Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age
}

let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Carol", lastName: "Mordo", age: 30)
let axton = Person(firstName: "Axton", lastName: "Rose", age: 22)
let knox = Person(firstName: "Knox", lastName: "Fort", age: 20)
var clubMembers: [Person] = [james, andrea, carol]
clubMembers.append(knox)

func areYouAMemberOfTheClub(person: Person) -> Bool {
    return clubMembers.contains(person)
}

