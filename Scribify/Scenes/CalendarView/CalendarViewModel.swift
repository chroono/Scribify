//
//  CalendarViewModel.swift
//  Scribify
//
//  Created by Emil Piórkowski on 24/07/2024.
//

import Foundation

class CalendarViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var date = Date()
    
    init(title: String, date: Date = Date()) {
        self.title = title
        self.date = date
    }
}
