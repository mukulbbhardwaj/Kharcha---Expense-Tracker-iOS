//
//  TransactionModel.swift
//  Expense Tracker
//
//  Created by Mukul Bhardwaj on 25/07/22.
//

import Foundation
struct Transction:Identifiable{
    let id:         Int
    let date:       String
    let instituion: String
    let account:     String
    var merchant:   String
    let amount:   Double
    let type:     TransactionType.RawValue
    var categoryId: Int
    var category:String
    let isPending:Bool
    var isTransfer:Bool
    var isExpense:Bool
    var isEdited:Bool
}
enum TransactionType:String{
    case debit = "debit"
    case credit = "credit"
}