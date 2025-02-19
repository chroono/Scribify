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
            CalendarView(vm: CalendarViewModel(title: ""))
                .tabItem {
                    Button("Calendar", systemImage: "calendar") {
                        
                    }
                }
        }
    }
    
}
#Preview {
    TabBar()
}
