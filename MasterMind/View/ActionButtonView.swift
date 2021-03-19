//
//  ActionButtonView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct ActionButtonView: View
{
    let icon: String
    let action: () -> Void
    let color: Color
    
    private let size: CGFloat = 35
    private let paddingSize: CGFloat = 10
    
    var body: some View
    {
        Button(action: { action() })
        {
            Image(systemName: icon).foregroundColor(color).padding().overlay(RoundedRectangle(cornerRadius: 25).stroke(color, lineWidth: 2).frame(width: size, height: size, alignment: .center)).padding(EdgeInsets(top: 0, leading: paddingSize, bottom: 0, trailing: paddingSize))
        }
    }
}

struct ActionButtonView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ActionButtonView(icon: "thrash", action: { print("·")}, color: Color.red)
    }
}
