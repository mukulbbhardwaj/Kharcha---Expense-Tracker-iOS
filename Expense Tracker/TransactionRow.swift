//
//  TransactionRow.swift
//  Expense Tracker
//
//  Created by Mukul Bhardwaj on 25/07/22.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct TransactionRow:View{
    var transaction: Transaction
    var body: some View{
        HStack(spacing:20){
            //TRANSACTION CATEGORY ICON
            RoundedRectangle(cornerRadius: 20, style:.continuous )
                .fill(Color.icon.opacity(0.3))
                .frame(width: 44, height: 44)
                .overlay{
                    FontIcon.text(.awesome5Solid(code: .icons), fontsize: 24, color: Color.icon)
                }
            
            
            
            
            VStack(alignment: .leading, spacing: 6){
            //TRANSACTION MERCHANT
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                //TRANSACtION CATEGORY
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                //TRANSACTION DATE
                Text(transaction.dateParsed, format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            //TRANSACTION AMOUNT
            Text(transaction.signedAmount , format: .currency(code: "INR"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary)
            
            
        }
        .padding([.top, .bottom],8)
    }
}
struct TransactionRowPreview:PreviewProvider{
    static var previews: some View{
        Group {
            TransactionRow(transaction: transactionPreviewData)
            TransactionRow(transaction: transactionPreviewData)
                .preferredColorScheme(.dark)
        }
    }
}
