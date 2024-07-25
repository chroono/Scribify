//
//  StudentsList.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import Foundation

struct Students:Identifiable, Hashable {
    var id = UUID()
    var surname: String
    var name: String
}
let students = [
    Students(surname: "Bednarz", name: "Paulina"),
    Students(surname: "Chrzęstek", name: "Anna"),
    Students(surname: "Cioch", name: "Igor"),
    Students(surname: "Gliński", name: "Kacper"),
    Students(surname: "Jabłońska", name: "Marta"),
    Students(surname: "Janik", name: "Milena"),
    Students(surname: "Jędrak", name: "Hanna"),
    Students(surname: "Jędrak", name: "Róża"),
    Students(surname: "Kała", name: "Alan"),
    Students(surname: "Kauf", name: "Krystian"),
    Students(surname: "Krawczyk", name: "Paulina"),
    Students(surname: "Kupczak", name: "Szymon"),
    Students(surname: "Kusz", name: "Wiktoria"),
    Students(surname: "Michalski", name: "Maksymilian"),
    Students(surname: "Paliwoda", name: "Bartosz"),
    Students(surname: "Sendal", name: "Nadia"),
    Students(surname: "Szczepaniak", name: "Jakub"),
    Students(surname: "Świtalski", name: "Miłosz"),
    Students(surname: "Tatarowicz", name: "Milena"),
    Students(surname: "Wręczycka", name: "Julia"),
    Students(surname: "Wróbel", name: "Bartosz"),
    Students(surname: "Wróbel", name: "Wiktor"),
    Students(surname: "Żłobiński", name: "Igor")
]
