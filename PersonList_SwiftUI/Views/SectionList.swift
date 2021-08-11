//
//  SectionList.swift
//  PersonList_SwiftUI
//
//  Created by Oleg Tsarenkoff on 10.08.21.
//

import SwiftUI

struct SectionList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(persons, id: \.email ) { person in
                    Section(header: Text("\(person.fullName)")) {
                        
                        HStack {
                            Image(systemName: "phone.fill")
                            Text("\(person.numberPhone)")
                                .foregroundColor(.blue)
                        }
                        
                        HStack {
                            Image(systemName: "at")
                            Text("\(person.email)")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .navigationBarTitle("Section List")
        }
    }
    
    struct SectionList_Previews: PreviewProvider {
        static var previews: some View {
            SectionList(persons: Person.getPerson())
        }
    }
}
