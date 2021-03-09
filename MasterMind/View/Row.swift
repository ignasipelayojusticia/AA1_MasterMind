//
//  Row.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct Row: View
{
    var number: Int
    
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    var body: some View
    {
        HStack
        {
            Circle().fill(firstSphereColor).frame(width: 50, height: 50, alignment: .center)
            
            Circle().fill(secondSphereColor).frame(width: 50, height: 50, alignment: .center)
            
            Circle().fill(thirdSphereColor).frame(width: 50, height: 50, alignment: .center)
            
            Circle().fill(fourthSphereColor).frame(width: 50, height: 50, alignment: .center)
        }
    }
}

/*
struct RowView_Preview: PreviewProvider
{
    static var previews: some View
    {
        Row(firstSphereColor: .red, secondSphereColor: .blue, thirdSphereColor: .yellow, fourthSphereColor: .purple)
    }
}
 */
