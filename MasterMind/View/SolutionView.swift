//
//  SolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct SolutionView: View
{
    let solution: Solution
    
    private let size: CGFloat = 10.0
    
    var body: some View
    {
        HStack
        {
            Circle().fill(solution.sphereColors[0]).frame(width: size, height: size, alignment: .center)
            Circle().fill(solution.sphereColors[1]).frame(width: size, height: size, alignment: .center)
            Circle().fill(solution.sphereColors[2]).frame(width: size, height: size, alignment: .center)
            Circle().fill(solution.sphereColors[3]).frame(width: size, height: size, alignment: .center)
        }
    }
}

struct SolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        SolutionView(solution: ViewModel().solution)
    }
}
