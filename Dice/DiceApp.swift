//  Dice - DiceApp.swift
//  Created by Travis Luckenbaugh on 6/13/23.

import SwiftUI

struct DiceView: View {
    @State var dieValue: Int = Int.random(in: 1...6)
    
    var body: some View {
        Image(systemName: "die.face.\(dieValue).fill")
            .font(.system(size: 100))
            .foregroundColor(.red)
            .contentTransition(.symbolEffect(.replace.downUp.wholeSymbol))
            .onTapGesture {
                dieValue = Int.random(in: 1...6)
            }
    }
}

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                DiceView()
                DiceView()
                DiceView()
            }
            VStack {
                DiceView()
                DiceView()
                DiceView()
            }
        }
        .padding()
    }
}

@main struct DiceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// Requires macOS 14. Macroexpand has @available but isn't honored
//#Preview {
//    ContentView()
//}
