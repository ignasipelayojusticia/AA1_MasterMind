//
//  VictoryMessageView.swift
//  MasterMind
//
//  Created by Alumne on 19/3/21.
//

import SwiftUI

struct VictoryMessageView: View
{
    var numberOfTries: Int
    var action: () -> Void
    
    var body: some View
    {
        VStack
        {
            Text("You won!").font(.title).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            Text("Total number of tries:")
            Text("\(numberOfTries)").font(.largeTitle)
            
            Spacer()
            
            PlayButtonView(action: action, color: Color.black, backgroundColor: Color.green, text: "Play again", icon: "play.fill").padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
        }.frame(width: 200, height: 200, alignment: .top).background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.gray))
    }
}


struct VictoryMessageView_Preview: PreviewProvider
{
    static var previews: some View
    {
        VictoryMessageView(numberOfTries: 10, action: {print("f")})
    }
}
