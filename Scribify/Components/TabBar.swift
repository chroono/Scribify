//
//  TabBar.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            StudentsListView(vm: StudentsViewModel(surname: "", name: ""))
                .tabItem {
                    Button("List", systemImage: "house") {
                        
                    }
                }
            
            JournalView()
                .tabItem {
                    Button("Journal", systemImage: "book") {
                        
                    }
                }
          
            
            CalendarView()
                .tabItem {
                    Button("Calendar", systemImage: "calendar") {
                        
                    }
                    // calendar
                }
        }
    }
}

#Preview {
    TabBar()
}
