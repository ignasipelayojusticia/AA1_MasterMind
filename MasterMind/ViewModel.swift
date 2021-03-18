//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


class ViewModel: ObservableObject
{
    let maximumNumberOfTries: Int = 12
    
    @Published var currentRow: Int = 0
    
    @Published var solution: Solution
    @Published var rows: [Row]
    @Published var userSolution: UserSolution
    
    let validColors: [Color] = [.red, .blue, .yellow, .green]
    
    init()
    {
        self.solution = Solution(self.validColors)
        self.rows = [Row]()
        self.userSolution = UserSolution()
    }
    
    public func SendSolution()
    {
        if(self.userSolution.firstSphereColor == Color.white || self.userSolution.secondSphereColor == Color.white ||
            self.userSolution.thirdSphereColor == Color.white || self.userSolution.fourthSphereColor == Color.white)
        {
            return
        }

        self.rows.append(Row(thisNumber: self.currentRow,
                             firstColor: self.userSolution.firstSphereColor, secondColor: self.userSolution.secondSphereColor,
                             thirdColor: self.userSolution.thirdSphereColor, fourthColor: self.userSolution.fourthSphereColor))
							 
		//TODO: Check for correct positions
		CheckSolution()
		
        self.currentRow = self.currentRow + 1
        
        self.ResetUserSolution()
    }
    
	private func CheckSolution()
	{
		var correctPositions: [Int] = [Int]()
		var incorrectPositions: [Int] = [Int]()
	
		for position in 1...4
		{
			if(CheckForSamePosition(position: number)
			{
				correctPositions.append(number)
			}
			else
			{
				incorrectPositions.append(number)
			}
		}
		
		if(correctPositions.count == 4)
		{
			print("You won")
			return
		}
	}
	
	private func CheckForSamePosition(position: Int) -> Bool
	{
		if(position == 1)
		{
			return self.rows[self.currentRow].firstSphereColor == self.userSolution.firstSphereColor
		}
		else if(position == 2)
		{
			return self.rows[self.currentRow].secondSphereColor == self.userSolution.secondSphereColor
		}
		else if(position == 3)
		{
			return self.rows[self.currentRow].thirdSphereColor == self.userSolution.thirdSphereColor
		}
		else
		{
			return self.rows[self.currentRow].fourthSphereColor == self.userSolution.fourthSphereColor
		}
	}
	
    public func ResetUserSolution()
    {
        self.userSolution.firstSphereColor = Color.white
        self.userSolution.secondSphereColor = Color.white
        self.userSolution.thirdSphereColor = Color.white
        self.userSolution.fourthSphereColor = Color.white
    }
    
    public func AddColor(color: Color)
    {
        if(self.userSolution.firstSphereColor == Color.white)
        {
            self.userSolution.firstSphereColor = color
            return
        }
        if(self.userSolution.secondSphereColor == Color.white)
        {
            self.userSolution.secondSphereColor = color
            return
        }
        if(self.userSolution.thirdSphereColor == Color.white)
        {
            self.userSolution.thirdSphereColor = color
            return
        }
        if(self.userSolution.fourthSphereColor == Color.white)
        {
            self.userSolution.fourthSphereColor = color
            return
        }
    }
}

struct Row
{
    let number: Int
    
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    var firstAnswerColor: Color
    var secondAnswerColor: Color
    var thirdAnswerColor: Color
    var fourthAnswerColor: Color
    
    init(thisNumber: Int, firstColor: Color, secondColor: Color, thirdColor: Color, fourthColor: Color)
    {
        self.number = thisNumber
        
        self.firstSphereColor = firstColor
        self.secondSphereColor = secondColor
        self.thirdSphereColor = thirdColor
        self.fourthSphereColor = fourthColor
        
        self.firstAnswerColor = Color.gray
        self.secondAnswerColor = Color.gray
        self.thirdAnswerColor = Color.gray
        self.fourthAnswerColor = Color.gray
    }
}

struct Solution
{
    var firstSphereColor: Color = Color.gray
    var secondSphereColor: Color = Color.gray
    var thirdSphereColor: Color = Color.gray
    var fourthSphereColor: Color = Color.gray
    
    var visible: Bool = true
    
    init(_ validColors: [Color])
    {
        self.firstSphereColor = validColors[Int.random(in: (0...3))]
        self.secondSphereColor = validColors[Int.random(in: (0...3))]
        self.thirdSphereColor = validColors[Int.random(in: (0...3))]
        self.fourthSphereColor = validColors[Int.random(in: (0...3))]
    }
}

struct UserSolution
{
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    init()
    {
        self.firstSphereColor = Color.white
        self.secondSphereColor = Color.white
        self.thirdSphereColor = Color.white
        self.fourthSphereColor = Color.white
    }
}
