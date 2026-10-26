//
//  ContentView.swift
//  EvenEn Oneven
//
//  Created by Siebe Bonny on 12/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State var invoer: String = ""
    @State var uitvoer: String = ""

    
    var body: some View {
        VStack{
            headerview("Even en Oneven", subtitle: "@state, gehele deling, tertaire opeator, textfield, button", desc: "de app berekent van een gegeven getal of het even of oneven is.", back: .teal, textColor: .white)
            
            Spacer()
            
            TextField(text: $invoer, label: {
                Text("Geef een getal in: ")
            })
            .padding()
            
            Button("Even of Oneven") {
                if let getal = Int(invoer) {
/*                    if (getal % 2) == 0 {
                        uitvoer = "even"
                    } else {
                        uitvoer = "oneven"
                   }
 */
                    uitvoer = getal % 2 == 0 ? "even" : "ONEVEN"
                } else {
                    uitvoer = "Voer een geheel getal in."
                }
            }
            Spacer()
            
        Text(uitvoer)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
