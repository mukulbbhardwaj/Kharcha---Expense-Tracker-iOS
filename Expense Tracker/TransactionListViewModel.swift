//
//  TransactionListViewModel.swift
//  Expense Tracker
//
//  Created by Mukul Bhardwaj on 25/07/22.
//

import Foundation


final class TransactionListViewModel: ObservableObject{
    @Published var transaction: [Transaction] = []
    func getTransaction(){
        let url  = URL (string: <#T##String#>)
    }
}
