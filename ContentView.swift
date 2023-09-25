//
//  ContentView.swift
//  Emoji
//
//  Created by Pavan Sarvaiya on 23/09/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case first = "☺️", second = "⚽️", third = "🚀", fourth = "🤝"
}

struct ContentView: View {
    @State var selection: Emoji = .third
    
    var body: some View {
        VStack {
            Text(selection.rawValue)
                .font(.system(size: 120))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) { emoji in
                    Text(emoji.rawValue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
