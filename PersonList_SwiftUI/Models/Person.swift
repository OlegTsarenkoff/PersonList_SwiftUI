//
//  Person.swift
//  PersonsList
//
//  Created by Oleg Tsarenkoff on 13.06.21.
//

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let numberPhone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let numberPhones = DataManager.shared.numberPhones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                numberPhone: numberPhones[index])
            persons.append(person)
        }
        return persons
    }
}
