//
//  ContentView.swift
//  Memorize
//
//  Created by Moisés on 05/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello, CS193P!")
                .foregroundColor(.orange)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
