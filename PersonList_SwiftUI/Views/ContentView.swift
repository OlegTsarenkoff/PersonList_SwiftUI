//
//  ContentView.swift
//  PersonList_SwiftUI
//
//  Created by Oleg Tsarenkoff on 10.08.21.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getPerson()
    
    var body: some View {
        TabView {
            
            PersonList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Person List")
                }
            
            SectionList(persons: persons)
                .tabItem {
                    Image(systemName: "person.crop.square.fill.and.at.rectangle")
                    Text("Section List")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
