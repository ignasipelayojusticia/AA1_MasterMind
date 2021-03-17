//
//  UserSolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct UserSolutionView: View
{
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    private let size: CGFloat = 30.0
    
    var body: some View
    {
        HStack
        {
            Circle().fill(firstSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(secondSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(thirdSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(fourthSphereColor).frame(width: size, height: size, alignment: .center)
        }
    }
}

struct UserSolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        UserSolutionView(firstSphereColor: Color.red, secondSphereColor: Color.red, thirdSphereColor: Color.blue, fourthSphereColor: Color.yellow)
    }
}
