//
//  SearchContact.swift
//  AddressBookConsole
//
//  Created by Nitesh Kumar Singh on 08/08/22.
//

import Foundation


func searchContacts() {
    var flag = false
    
print("""
-----Search by-----
Select an option:
A) First name
B) Last name
C) Age
D) Phone no
E) Email address
""")

let userChoiceSearchMenu = readLine()

switch userChoiceSearchMenu {
case "A","a":
    print("Enter first name to search")
    let tempVar = readLine()
    for i in 0..<allContacts.count {
        if tempVar == allContacts[i].firstName || tempVar == allContacts[i].firstName.lowercased() {
            print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
            flag = true
        }
        
    }
    if flag == false{
            print("No contact found!")
        }
        
    
            
            
case "B","b":
        print("Enter last name to search")
        let tempVar = readLine()
        for i in 0..<allContacts.count {
            if tempVar == allContacts[i].lastName || tempVar == allContacts[i].lastName.lowercased() {
                print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
                flag = true
            }
            
        }
        if flag == false{
                print("No contact found!")
            }
            
case "C","c":
            print("Enter age to search")
            let tempVar = readLine()
            for i in 0..<allContacts.count {
                if Int(tempVar!) == allContacts[i].age{
                    print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
                    flag = true
                }
                
            }
            if flag == false{
                    print("No contact found!")
                }
case "D","d":
                print("Enter phone to search")
                let tempVar = readLine()
                for i in 0..<allContacts.count {
                    if Int(tempVar!) == allContacts[i].phoneNumber{
                        print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
                        flag = true
                    }
                    
                }
                if flag == false{
                        print("No contact found!")
                }
                
case "E","e":
                    print("Enter first name to search")
                    let tempVar = readLine()
                    for i in 0..<allContacts.count {
                        if tempVar == allContacts[i].email || tempVar == allContacts[i].email.lowercased() {
                            print("Name : \(allContacts[i].firstName) \(allContacts[i].lastName), \tPhone no :\(allContacts[i].phoneNumber)")
                            flag = true
                        }
                        
                    }
                    if flag == false{
                            print("No contact found!")
                }
    default :
                        print("Invalid Option!")


}
    print("press C to continue or M for main menu")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        searchContacts()
    }
    else if tempChoice == "M" || tempChoice == "m" {
        mainFunction()
    }
}

