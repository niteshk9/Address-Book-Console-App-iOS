//
//  SortContact.swift
//  AddressBookConsole
//
//  Created by Nitesh Kumar Singh on 08/08/22.
//

import Foundation
var userChoiceSortMenu = ""

func sortByAscendingOrder() {

    print("""
    ------Ascending order of------"
    A) Name
    B) Age
    """)
    userChoiceSortMenu = readLine()!
    
    switch userChoiceSortMenu {
    case "a", "A":
        let sortedContactList = allContacts.sorted(by: {$0.firstName < $1.firstName})
        for i in 0..<allContacts.count {
            
            print("Name : \(sortedContactList[i].firstName) \(sortedContactList[i].lastName), \tPhone no :\(sortedContactList[i].phoneNumber)")
        }
    
    case "b","B":
        let sortedContactListByAge = allContacts.sorted(by: {$0.age < $1.age})
        for i in 0..<allContacts.count {
            
            print("Age: \(sortedContactListByAge[i].age) Name : \(sortedContactListByAge[i].firstName) \(sortedContactListByAge[i].lastName), \tPhone no :\(sortedContactListByAge[i].phoneNumber)")
        }
    default :
        print("Invalid selection")
    }
    print("press C to continue or P for previous menu or M for main menu")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        sortByAscendingOrder()
    }
    else if tempChoice == "P" || tempChoice == "p" {
        sortContact()
    }
    else if tempChoice == "M" || tempChoice == "m" {
        mainFunction()
    }
    
}

func sortByDescendingOrder() {

    print("""
    ------Descending order of------"
    A) Name
    B) Age
    """)
    userChoiceSortMenu = readLine()!
    
    switch userChoiceSortMenu {
    case "a", "A":
        let sortedContactList = allContacts.sorted(by: {$0.firstName > $1.firstName})
        for i in 0..<allContacts.count {
            
            print("Name : \(sortedContactList[i].firstName) \(sortedContactList[i].lastName), \tPhone no :\(sortedContactList[i].phoneNumber)")
        }
    
    case "b","B":
        let sortedContactListByAge = allContacts.sorted(by: {$0.age > $1.age})
        for i in 0..<allContacts.count {
            
            print("Age: \(sortedContactListByAge[i].age) Name : \(sortedContactListByAge[i].firstName) \(sortedContactListByAge[i].lastName), \tPhone no :\(sortedContactListByAge[i].phoneNumber)")
        }
    default :
        print("Invalid selection")
    }
    print("press C to continue or P for previous menu or M for main menu")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        sortByDescendingOrder()
    }
    else if tempChoice == "P" || tempChoice == "p" {
        sortContact()
    }
    else if tempChoice == "M" || tempChoice == "m" {
        mainFunction()
    }
}


func sortContact () {
    print("""
    -----Sort by-----
    Select an option:
    A) Ascending order
    B) Descending order
    """)
    userChoiceSortMenu = readLine()!
    if userChoiceSortMenu == "a" || userChoiceSortMenu == "A" {
        sortByAscendingOrder()
    }
    else if userChoiceSortMenu == "b" || userChoiceSortMenu == "B"{
        sortByDescendingOrder()
    }
    else {
        print("Invalid selection!")
    }
    print("press C to continue or M for main menu")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        sortContact()
    }
    else if tempChoice == "M" || tempChoice == "m" {
        mainFunction()
    }
}
