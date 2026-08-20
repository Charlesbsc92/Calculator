//
//  ContentView.swift
//  Calculator
//
//  Created by Charles on 20/08/26.
//

import SwiftUI

struct MainCalculatorView: View {
    
    @State var isLightMode:Bool = true
    @State var currentComputation:String = ""
    @State var mainResult:String = "0"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MainCalculatorView()
}
