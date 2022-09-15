//
//  AddressBook.swift
//  AddressBookConsole
//
//  Created by Nitesh Kumar Singh on 08/08/22.
//

import Foundation

class Contacts {
    let firstName : String
    let lastName : String
    let age : Int
    let phoneNumber : Int
    let email : String
    
    init(firstName : String, lastName : String, age : Int, phoneNumber : Int, email : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.phoneNumber = phoneNumber
        self.email = email
    }
    
    func display() {
        print(self.firstName)
    }
}

var allContacts : [Contacts] = [
    .init(firstName: "Nitesh", lastName: "Kumar", age: 22, phoneNumber: 9785468754, email: "nitesh@gmail.com"),
    .init(firstName: "Rohit", lastName: "Kumar", age: 21, phoneNumber: 7584987833, email: "rohit11@gmail.com"),
    .init(firstName: "Shivam", lastName: "Sharma", age: 25, phoneNumber: 8763728374, email: "sharmashivam@gmail.com"),
    .init(firstName: "Aman", lastName: "Arora", age: 24, phoneNumber: 9485746374, email: "amanarr@gmail.com"),
    .init(firstName: "Aditya", lastName: "Agarwal", age: 22, phoneNumber: 9987584738, email: "aditya888@gmail.com"),
    .init(firstName: "Sachin", lastName: "Yadav", age: 27, phoneNumber: 9876567865, email: "sachinyad@gmail.com"),
    .init(firstName: "Tanisha", lastName: "Goyal", age: 21, phoneNumber: 9989765456, email: "tgoyal@gmail.com"),
    .init(firstName: "Karishma", lastName: "Jaisawal", age: 23, phoneNumber: 7867535676, email: "karishma998@gmail.com"),
    .init(firstName: "Yash", lastName: "Raj", age: 20, phoneNumber: 6787656787, email: "yash44646@gmail.com"),
    .init(firstName: "Nikhil", lastName: "Kumar", age: 22, phoneNumber: 9878776787, email: "nikhilku@gmail.com")
]


