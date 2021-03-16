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
    
    var rowNumber: Int
    
    private let size: CGFloat = 35.0
    private let answerSize: CGFloat = 15.0
 
    
    var body: some View
    {
        HStack
        {
            Text("\(rowNumber + 1)").font(.largeTitle).fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/).frame(width: 50, height: 35, alignment: .leading)
            
            Circle().fill(viewModel.rows[rowNumber].firstSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(viewModel.rows[rowNumber].secondSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(viewModel.rows[rowNumber].thirdSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().fill(viewModel.rows[rowNumber].fourthSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer(minLength: 10)
            
            VStack
            {
                Circle().fill(viewModel.rows[rowNumber].firstAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Circle().fill(viewModel.rows[rowNumber].thirdAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            VStack
            {
                Circle().fill(viewModel.rows[rowNumber].secondAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Circle().fill(viewModel.rows[rowNumber].fourthAnswerColor).frame(width: answerSize, height: answerSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        RowView(viewModel: ViewModel(), rowNumber: 0)
    }
}
