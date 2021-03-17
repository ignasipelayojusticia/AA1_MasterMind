//
//  SolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct SolutionView: View
{
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    private let size: CGFloat = 10.0
    
    var body: some View
    {
        HStack
        {
            Circle().fill(firstSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(secondSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(thirdSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(fourthSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SolutionView(firstSphereColor: .red, secondSphereColor: .orange, thirdSphereColor: .blue, fourthSphereColor: .black)
    }
}
