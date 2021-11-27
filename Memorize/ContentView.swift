//
//  ContentView.swift
//  Memorize
//
//  Created by Natália Guimaraes on 24/11/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🚕", "🚓" , "🚙","🚌", "🚎", "🏎", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚔", "🚍", "🚘", "🚖", "🚡", "🚠", "🚟", "🚃", "🚋", "🚞", "🚝", "🚄", "🚀", "⛵️", "🚁", "🛸"]
    @State var emojiCount = 3
    
    var body: some View {
        VStack{
            HStack{
                ForEach(emojis[0..<emojiCount], id:\.self){ emoji in
                    CardView(content: emoji)
                }
            }
            HStack{
                add
                Spacer()
                remove
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)

            
    }
    
    var remove: some View{
        Button(action: {
            if emojiCount > 1{
                emojiCount -= 1
            }
        }, label: {
            VStack{
                Image(systemName: "minus.circle")
            }
        })
    }
    
    var add: some View{
        Button(action: {
            if emojiCount < emojis.count{
                emojiCount += 1
            }
        }, label: {
            VStack{
                Image(systemName: "plus.circle")
                    
            }
        })
    }
}


struct CardView: View{
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            if isFaceUp {
             shape
                .fill()
                .foregroundColor(.white)
                shape
               .stroke(lineWidth: 3)
            Text(content)
                .font(.largeTitle)
            } else {
                shape
                   .fill()
            }
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
