//
//  StudentsList.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import Foundation

struct Students: Identifiable {
    let id = UUID()
    var username: String
    var name: String
}
let students = [
Students(username: "Bednarz", name: "Paulina"),
Students(username: "Chrzęstek", name: "Anna"),
Students(username: "Cioch", name: "Igor"),
Students(username: "Gliński", name: "Kacper"),
Students(username: "Jabłońska", name: "Marta"),
Students(username: "Janik", name: "Milena"),
Students(username: "Jędrak", name: "Hanna"),
Students(username: "Jędrak", name: "Róża"),
Students(username: "Kała", name: "Alan"),
Students(username: "Kauf", name: "Krystian"),
Students(username: "Krawczyk", name: "Paulina"),
Students(username: "Kupczak", name: "Szymon"),
Students(username: "Kusz", name: "Wiktoria"),
Students(username: "Michalski", name: "Maksymilian"),
Students(username: "Paliwoda", name: "Bartosz"),
Students(username: "Sendal", name: "Nadia"),
Students(username: "Szczepaniak", name: "Jakub"),
Students(username: "Świtalski", name: "Miłosz"),
Students(username: "Tatarowicz", name: "Milena"),
Students(username: "Wręczycka", name: "Julia"),
Students(username: "Wróbel", name: "Bartosz"),
Students(username: "Wróbel", name: "Wiktor"),
Students(username: "Żłobiński", name: "Igor")
]
