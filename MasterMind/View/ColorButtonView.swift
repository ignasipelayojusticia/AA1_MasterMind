//
//  ColorButtonView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct ColorButtonView: View
{
    let viewModel: ViewModel
    let color: Color
    
    private let size: CGFloat = 50.0
    
    var body: some View
    {
        Button(" ", action: { viewModel.AddColor(color: color)})
            .frame(width: size, height: size, alignment: .center)
            .background(color)
            .foregroundColor(.black)
            .font(.largeTitle)
            .cornerRadius(30)
    }
}

struct ColorButtonView_Preview: PreviewProvider
{
    static var previews: some View
    {
        ColorButtonView(viewModel: ViewModel(), color: Color.red)
    }
}
