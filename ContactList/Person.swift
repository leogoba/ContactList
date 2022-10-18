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
        
        let dataManager = DataManager()
        
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
    
    class DataManager {
        let firstNamesList: [String] = [
            "John",
            "Sharon",
            "Aaron",
            "Steven",
            "Nicola",
            "Ted",
            "Bruce",
            "Carl",
            "Allan"
        ]
        
        let lastNamesList: [String] = [
            "Murphy",
            "Jankin",
            "Williams",
            "Black",
            "Robertson",
            "Butler",
            "Isaacson",
            "Smith",
            "Pennyworth"
        ]
        
        let phoneNumbersList: [String] = [
            "11111111",
            "22222222",
            "33333333",
            "44444444",
            "55555555",
            "66666666",
            "77777777",
            "88888888",
            "99999999",
            "00000000"
        ]
        
        let emailsList: [String] = [
            "qqqq@mail.ru",
            "wwww@mail.ru",
            "eeee@mail,ru",
            "rrrr@mail.ru",
            "tttt@mail.ru",
            "yyyy@mail.ru",
            "uuuu@mail.ru",
            "iiii@mail.ru",
            "oooo@mail.ru",
            "pppp@mail.ru"
        ]
    }
}
