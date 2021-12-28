//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Natália Guimaraes on 23/12/21.
//

import SwiftUI

@main
struct MemorizeApp: App{
    let game = EmojiMemoryGame()
    
    var body: some Scene{
        WindowGroup{
            ContentView(viewModel: game)
        }
    }
}
