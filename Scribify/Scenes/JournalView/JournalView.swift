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
    
    var body: some View {
        NavigationStack {
            VStack {
                
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
            TextField("Dodaj ocenę", text: $mark)
            Button("Cofnij"){
                
            }
            Button("Dodaj") {
                
            }
        }
    }
    
}

#Preview {
    JournalView(student: students,vm: JournalViewModel(title: "", mark: "", avarageGrade: ""))
}
