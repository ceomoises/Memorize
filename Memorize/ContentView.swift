//
//  ContentView.swift
//  Memorize
//
//  Created by Moisés on 05/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var emoji = ["🎃","👻","👽","👺"]
    
    var body: some View {
        
        HStack{
            CardView(content: "🎃")
            CardView(content: "👻")
            CardView(content: "👽")
            CardView(content: "👺")
        }
        .padding(.horizontal)
        .foregroundColor(.red)

    }
}

struct CardView: View{
    
    var content : String
    @State var isFaceUp : Bool = true
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
                shape.fill()
            }
        }.onTapGesture {
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
