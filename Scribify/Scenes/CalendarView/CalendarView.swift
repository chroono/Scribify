//
//  CalendarView.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import SwiftUI

struct CalendarView: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    @State var selectedDate: Date = Date()
    @State var showAlert: Bool = false
    @State var title: String = ""
    @State var eventsArray: [String] = []
    
    @ObservedObject var vm: CalendarViewModel
    
    var body: some View {
        NavigationStack{
            VStack {
                DatePicker("Date", selection: $selectedDate)
                    .datePickerStyle(.graphical)
                Divider()
                Text("Nadchodzące wydarzenia:")
                
            }
            Spacer()
            
            List(eventsArray, id: \.self) {_ in
                HStack {
                    Text(title)
                    Spacer()
                    Text(selectedDate, formatter: dateFormatter)
                        .swipeActions {
                            Button("Delete", role: .destructive) {
                                
                            }
                            
                        }
                }
                
            }
            
            .navigationTitle("Kalendarz")
            .toolbar(content: {
                ToolbarItem {
                    Button("", systemImage: "plus") {
                        showAlert = true
                        
                    }
                }
            })
        }
        .alert("Dodaj wydarzenie", isPresented: $showAlert) {
            TextField("Dodaj nazwę wydarzenia",text: $title)
            Button("Cofnij") {
                
            }
            Button("Dodaj") {
                addEvents()
            }
        }
        
        
    }
    
    func addEvents() {
        eventsArray.append(title)
    }
    
}



#Preview {
    CalendarView(vm: CalendarViewModel(title: ""))
}
