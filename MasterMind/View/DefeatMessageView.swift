//
//  DefeatMessageView.swift
//  MasterMind
//
//  Created by Alumne on 20/3/21.
//

import SwiftUI

struct DefeatMessageView: View
{
    var solution: Solution
    var action: () -> Void
    
    var body: some View
    {
        VStack
        {
            Text("You lost!").font(.title).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            Text("Solution:")
            UserSolutionView(userSolution: solution)
            
            Spacer()
            
            PlayButtonView(action: action, color: Color.black, backgroundColor: Color.green, text: "Play again", icon: "play.fill").padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
        }.frame(width: 200, height: 200, alignment: .top).background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.gray))
    }
}


struct DefeatMessageView_Preview: PreviewProvider
{
    static var previews: some View
    {
        DefeatMessageView(solution: Solution(Color.red), action: {print("f")})
    }
}
