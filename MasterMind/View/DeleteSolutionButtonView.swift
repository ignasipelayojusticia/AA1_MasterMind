//
//  DeleteSolutionButtonView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct DeleteSolutionButtonView: View
{
    let label: String
    let action: () -> Void
    
    private let size: CGFloat = 50.0
    
    var body: some View
    {
        Button(label, action: { action() })
            .frame(width: size, height: size, alignment: .center)
            .background(Color.red)
            .foregroundColor(.black)
            .font(.largeTitle)
            .cornerRadius(30)
    }
}

struct DeleteSolutionButtonView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DeleteSolutionButtonView(label: "X", action: { print("·")})
    }
}
