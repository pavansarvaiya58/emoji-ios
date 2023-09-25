//
//  ContentView.swift
//  Emoji
//
//  Created by Pavan Sarvaiya on 23/09/23.
//

import SwiftUI

enum Emoji: String {
    case first = "☺️", second = "⚽️", third = "🚀", fourth = "🤝"
}

struct ContentView: View {
    var selection: Emoji = .third
    
    var body: some View {
        Text(selection.rawValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
