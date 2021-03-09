//
//  ColorSphere.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct ColorSphere: View
{
    var color: Color
    
    var body: some View
    {
        Circle().fill(color).frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

