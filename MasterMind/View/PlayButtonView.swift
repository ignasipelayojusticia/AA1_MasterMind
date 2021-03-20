//
//  PlayButtonView.swift
//  MasterMind
//
//  Created by Alumne on 20/3/21.
//

import SwiftUI

struct PlayButtonView: View
{
    var action: () -> Void
    var color: Color
    var backgroundColor: Color
    var text: String
    var icon: String
    
    private let size: CGFloat = 100
    
    var body: some View
    {
        Button(action: { action() })
        {
            HStack
            {
                if(text != "")
                {
                    Text(text).font(.body).padding().foregroundColor(color)
                }
                Image(systemName: icon).padding().accentColor(color)
            }.background(RoundedRectangle(cornerRadius: 25).fill(backgroundColor))
        }
    }
}

struct PlayButtonView_Preview: PreviewProvider
{
    static var previews: some View
    {
        PlayButtonView(action: { print("·")}, color: Color.blue, backgroundColor: Color.black, text: "Play again", icon: "play.fill")
    }
}
