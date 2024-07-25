//
//  JournalViewModel.swift
//  Scribify
//
//  Created by Emil Piórkowski on 25/07/2024.
//

import Foundation

class JournalViewModel: ObservableObject {
    @Published var title: String
    @Published var mark: String
    @Published var avarageGrade: String

    init(title: String, mark: String, avarageGrade: String) {
        self.title = title
        self.mark = mark
        self.avarageGrade = avarageGrade
    }
    
}
