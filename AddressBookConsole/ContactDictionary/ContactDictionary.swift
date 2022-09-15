//
//  ContactDictionary.swift
//  AddressBookConsole
//
//  Created by Nitesh Kumar Singh on 08/08/22.
//

import Foundation

func contactDictionary() {
    
    var contactDict = [Character : [Contacts]]()
    for contact in allContacts {
        
        let firstCharacter = contact.firstName.first!
        
        if contactDict[firstCharacter] != nil {
            contactDict[firstCharacter]!.append(contact)
        } else {
            contactDict[firstCharacter] = [contact]
        }
    }
    
    print("""
------Contacts dictionary------
Enter the key to find their associated values
""")
    var contactDictionaryKey = readLine()
    contactDictionaryKey = contactDictionaryKey?.uppercased()
    
    if contactDict[Character(contactDictionaryKey!)] != nil {
        for contact in contactDict[Character(contactDictionaryKey!)] ?? []{
            contact.display()
        }
    }else {
        print("No contact found")
    }
    
    
    print("press C to continue or M for main menu")
    let tempChoice = readLine()
    if tempChoice == "C" || tempChoice == "c" {
        contactDictionary()
    }
    else if tempChoice == "M" || tempChoice == "m" {
        mainFunction()
    }

}

