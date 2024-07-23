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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    StudentsListView(vm: StudentsViewModel(surname: "", name: ""))
}
