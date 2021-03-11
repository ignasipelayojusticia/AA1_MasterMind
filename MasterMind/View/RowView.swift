//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct RowView: View
{
    @ObservedObject var viewModel: ViewModel
    
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    private let firstAnswerColor: Color = .gray
    private let secondAnswerColor: Color = .gray
    private let thirdAnswerColor: Color = .gray
    private let fourthAnswerColor: Color = .gray
    
    private let size: CGFloat = 35.0
    private let answerSize: CGFloat = 15.0
 
    
    var body: some View
    {
        HStack
        {
            Circle().fill(viewModel.firstColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(secondSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(thirdSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(fourthSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            VStack
            {
                Circle().fill(firstAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Circle().fill(secondAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            VStack
            {
                Circle().fill(thirdAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Circle().fill(fourthAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct RowView_preview: PreviewProvider
{
    static var previews: some View
    {
        RowView(viewModel: ViewModel(), firstSphereColor: .red, secondSphereColor: .red, thirdSphereColor: .red, fourthSphereColor: .red)
    }
}
