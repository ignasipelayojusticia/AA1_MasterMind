//
//  SolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct SolutionView: View
{
	let viewModel: ViewModel
    
    private let size: CGFloat = 10.0
    
    var body: some View
    {
        HStack
        {
            Circle().fill(viewModel.solution.firstSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.solution.secondSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.solution.thirdSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.solution.fourthSphereColor).frame(width: size, height: size, alignment: .center)
        }
    }
}

struct SolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SolutionView(viewModel: ViewModel())
    }
}
