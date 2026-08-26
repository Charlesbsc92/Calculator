//
//  ContentView.swift
//  Calculator
//
//  Created by Charles on 20/08/26.
//

import SwiftUI

struct MainCalculatorView: View {
    
    @State var isLightMode:Bool = true
    @State var currentComputation:String = "4+3+2"
    @State var mainResult:String = "0"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor.ignoresSafeArea()
            VStack {
                SunMoonView(isLightMode:isLightMode)
                    .onTapGesture {
                        self.isLightMode.toggle()
                    }
                Spacer()
                ComputationView(mainResult:mainResult,currentComputation:currentComputation)
                Spacer()
                CalsButtonView(currentComputation:$currentComputation, mainResult:$mainResult)
            }
            .padding()
        }
        .environment(\.colorScheme,isLightMode ? .light : .dark)
    }
}

#Preview {
    MainCalculatorView()
}
