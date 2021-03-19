//
//  UserSolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct UserSolutionView: View
{
    let userSolution: Solution
    
    private let size: CGFloat = 30.0
    
    var body: some View
    {
        HStack
        {
            Circle()
                .strokeBorder(Color.gray, lineWidth: 1)
                .background(Circle().fill(userSolution.sphereColors[0])).frame(width: size, height: size, alignment: .center)
            Circle()
                .strokeBorder(Color.gray, lineWidth: 1)
                .background(Circle().fill(userSolution.sphereColors[1])).frame(width: size, height: size, alignment: .center)
            Circle()
                .strokeBorder(Color.gray, lineWidth: 1)
                .background(Circle().fill(userSolution.sphereColors[2])).frame(width: size, height: size, alignment: .center)
            Circle()
                .strokeBorder(Color.gray, lineWidth: 1)
                .background(Circle().fill(userSolution.sphereColors[3])).frame(width: size, height: size, alignment: .center)
        }
    }
}

struct UserSolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        UserSolutionView(userSolution: ViewModel().userSolution)
    }
}
