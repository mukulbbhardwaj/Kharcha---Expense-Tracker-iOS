//
//  Extensions.swift
//  Expense Tracker
//
//  Created by Mukul Bhardwaj on 13/07/22.
//

import Foundation
import SwiftUI

extension Color{
    static let background = Color("Background")
    static let icon = Color("Icon")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}



extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
        print("Initilaising Date Formatter....")
        let formatter = DateFormatter()
        formatter.dateFormat = "mm/dd/yyyy"
        
        return formatter
    }()
}
 

extension String{
    func dateParsed()->Date{
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self)  else { return Date() }
        return parsedDate
    }
}
