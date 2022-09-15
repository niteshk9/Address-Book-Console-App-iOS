//
//  main.swift
//  AddressBookConsole
//
//  Created by Nitesh Kumar Singh on 08/08/22.
//

import Foundation
func mainFunction() {
print("""
-----Address Book-----
Select an option:
A) Show all contacts
B) Sort contacts
C) Search contacts
D) Contact dictionary
""")
let userChoiceMainMenu = readLine()
switch userChoiceMainMenu {
case "A","a":
    for i in 0..<allContacts.count {
        print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
    }
case "B","b":
    sortContact()
case "C","c":
    searchContacts()
case "D","d":
    contactDictionary()
default:
    print("No input")
}
    print("press C to continue")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        mainFunction()
    }
}

mainFunction()
