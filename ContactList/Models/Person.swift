//
//  Person.swift
//  ContactList
//
//  Created by leogoba on 18.10.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        
        let dataManager = DataStore.shared
        
        let randomFirstName = dataManager.firstNamesList.shuffled()
        let randomLastName = dataManager.lastNamesList.shuffled()
        let randomEmail = dataManager.emailsList.shuffled()
        let randomPhoneNumber = dataManager.phoneNumbersList.shuffled()
        
        var persons: [Person] = []
        
        for data in 0..<dataManager.firstNamesList.count {
            persons.append(
                Person(
                    firstName: randomFirstName[data],
                    lastName: randomLastName[data],
                    phoneNumber: randomPhoneNumber[data],
                    email: randomEmail[data]
                )
            )
        }
        return persons
    }
}
