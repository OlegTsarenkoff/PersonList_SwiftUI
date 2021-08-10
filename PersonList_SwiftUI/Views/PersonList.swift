//
//  PersonList.swift
//  PersonList_SwiftUI
//
//  Created by Oleg Tsarenkoff on 10.08.21.
//

import SwiftUI

struct PersonList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.email ) { person in
                NavigationLink(destination: PersonRow(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .navigationBarTitle("Person List")
        }
    }
}

struct PersonList_Previews: PreviewProvider {
    static var previews: some View {
        PersonList(persons: Person.getPerson())
    }
}
