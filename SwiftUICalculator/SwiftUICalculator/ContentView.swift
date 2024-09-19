//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by Charles on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var buttons = [["7","8","9","x"],
                   ["4","5","6","-"],
                   ["1","2","3","+"],
                   ["0",".",".","="]
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.ignoresSafeArea(.all)
            
            VStack(spacing:12) {
                HStack {
                    Spacer()
                    Text("42")
                        .font(.system(size: 72))
                        .foregroundColor(.white)
                }.padding()
                ForEach(buttons,id:\.self) { row in
                    HStack(spacing:12) {
                        ForEach(row,id: \.self) { column in
                            Text(column)
                                .font(.system(size: 32))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: self.butttonWidth(), height: self.butttonWidth())
                                .background(Color.yellow)
                                .cornerRadius(75/2)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    func butttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

#Preview {
    ContentView()
}
