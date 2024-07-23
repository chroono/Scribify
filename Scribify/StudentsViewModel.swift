//
//  StudentsViewModel.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import Foundation

class StudentsViewModel: ObservableObject {
    @Published var surname: String
    @Published var name: String
    
    init(surname: String, name: String) {
        self.surname = surname
        self.name = name
    }
}
