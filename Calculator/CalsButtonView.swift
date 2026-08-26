//
//  CalsButtonView.swift
//  Calculator
//
//  Created by Charles on 26/08/26.
//

import SwiftUI

struct CalsButtonView: View {
    
    @Binding var currentComputation:String
    @Binding var mainResult:String
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CalsButtonView(currentComputation: .constant("3+2+1"), mainResult: .constant("6"))
}
