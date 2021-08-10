//
//  PersonRow.swift
//  PersonList_SwiftUI
//
//  Created by Oleg Tsarenkoff on 10.08.21.
//

import SwiftUI

struct PersonRow: View {
    
    let person: Person
    
    var body: some View {
        Form {
            Text("E-mail: \(person.email)")
            Text("Phone: \(person.numberPhone)")
        }
        .navigationBarTitle(person.fullName)
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person(
            name: "Nilo",
            surname: "Bellic",
            email: "nikofromliberty@rs.com",
            numberPhone: "123-123-123"
        ))
    }
}
