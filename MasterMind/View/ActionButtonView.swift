//
//  ActionButtonView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct ActionButtonView: View
{
    let label: String
    let action: () -> Void
    let color: Color
    
    private let size: CGFloat = 50.0
    
    var body: some View
    {
        Button(label, action: { action() })
            .frame(width: size, height: size, alignment: .center)
            .background(color)
            .foregroundColor(.black)
            .font(.largeTitle)
            .cornerRadius(30)
    }
}

struct ActionButtonView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ActionButtonView(label: "X", action: { print("·")}, color: Color.red)
    }
}
