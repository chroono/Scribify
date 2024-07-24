//
//  CalendarView.swift
//  Scribify
//
//  Created by Emil Piórkowski on 23/07/2024.
//

import SwiftUI

struct CalendarView: View {
    
    @State var selectedDate: Date = Date()
    
    @ObservedObject var vm: CalendarViewModel
    
    var body: some View {
        VStack {
            DatePicker("Date", selection: $selectedDate)
                .datePickerStyle(.graphical)
            Text("Nadchodzące wydarzenia:")
            Divider()
        }
        Spacer()
        HStack {
            
        }


        
    }
}

#Preview {
    CalendarView(vm: CalendarViewModel(title: ""))
}
