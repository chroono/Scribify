//
//  StudentsListView.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import SwiftUI

struct StudentsListView: View {
    
    @State var student = students
    
    @ObservedObject var vm: StudentsViewModel
    
    var body: some View {
        NavigationStack {
            List(student) { student in
                NavigationLink(value: student) {
                    Text(student.surname)
                }
            }
            .navigationDestination(for: Students.self) { student in
                JournalView(student: [student], vm: JournalViewModel(title: "", mark: "", avarageGrade: ""))
            }
        }
    }
}

#Preview {
    StudentsListView(vm: StudentsViewModel(surname: "", name: ""))
}
