//
//  JournalView.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import SwiftUI

struct JournalView: View {
    
    @State var student = students
    @ObservedObject var vm: JournalViewModel
    @State var showAlert: Bool = false
    @State var mark: String = ""
    @State var events:String = ""
    @State var eventArray: [String] = []
    
    var body: some View {
        NavigationStack {
            List(eventArray, id: \.self){_ in
                HStack {
                    Text(events)
                    Spacer()
                    Text(mark)
                        .swipeActions {
                            Button("Delete", role: .destructive) {
                                
                            }
                        }
                }
            }
            .navigationTitle("\(student)")
            .toolbar {
                ToolbarItem {
                    Button("", systemImage: "plus") {
                        showAlert = true
                    }
                }        }
            
        }
        .alert("Dodaj ocenę", isPresented: $showAlert) {
            TextField("Dodaj wydarzenie", text: $events)
            TextField("Dodaj ocenę", text: $mark)
            Button("Cofnij"){
                
            }
            Button("Dodaj") {
                addEvents()
            }
        }
    }
    func addEvents() {
        eventArray.append(events)
    }
    
}

#Preview {
    JournalView(student: students,vm: JournalViewModel(title: "", mark: "", avarageGrade: ""))
}
