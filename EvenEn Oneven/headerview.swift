//
//  headrview.swift
//  myheaderview
//
//  Created by Siebe Bonny on 14/09/2026.
//

import SwiftUI

struct headerview: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    var desc: String = "description ..."
    var back: Color = .blue
    var textColor:Color = .white
    
    init(_ title: String, subtitle: String, desc: String, back: Color = .blue, textColor: Color = .white) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        VStack (spacing:15) {
            Text(title)
                .font(.largeTitle)
            
            Text(subtitle)
                .foregroundStyle(Color.gray)
            
            Text(desc)
                .frame(maxWidth: .infinity)
                .padding()
                .background(back)
                .foregroundStyle(textColor)
            
        }
        .font(.title)
    }
}

#Preview {
    headerview("titel", subtitle: "subtitel", desc: "beschrijving")
}
