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
            Image(systemName: "person")
                .resizable()
                .frame(height: 270)
                .padding()
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(Color.blue)
                Text("\(person.email)")
            }
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text(" \(person.numberPhone)")
            }
            
        }
        .navigationBarTitle(person.fullName)
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person(
            name: "Nilo",
            surname: "Bellic",
            email: "niko_bellic@rockstargames.com",
            numberPhone: "123-123-123"
        ))
    }
}
