//
//  ComputationView.swift
//  Calculator
//
//  Created by Charles on 26/08/26.
//

import SwiftUI

struct ComputationView: View {
    
    var mainResult:String
    var currentComputation:String
    
    var body: some View {
        Text(currentComputation)
        Text(mainResult)
    }
}

#Preview {
    ComputationView(mainResult: "0", currentComputation: "0+4+5")
}
