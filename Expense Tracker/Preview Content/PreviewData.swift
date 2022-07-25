//
//  PreviewData.swift
//  Expense Tracker
//
//  Created by Mukul Bhardwaj on 25/07/22.
//

import Foundation

var transactionPreviewData = Transaction(id: 01, date: "07/10/2000", instituion: "MKE", account:"Savings", merchant: "MKE", amount: 2000, type: "debit", categoryId: 033, category: "Food", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
