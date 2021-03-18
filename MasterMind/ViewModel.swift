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
    @Published var userSolution: Solution
    
    let validColors: [Color] = [.red, .blue, .yellow, .green]
    
    init()
    {
        self.solution = Solution()
        self.rows = [Row]()
        self.userSolution = Solution()
        
        self.CreateSolution()
    }
    
    private func CreateSolution()
    {
        self.solution.sphereColors[0] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[1] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[2] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[3] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
    }
    
    public func SendSolution()
    {
        if(self.userSolution.sphereColors[0] == Color.white || self.userSolution.sphereColors[1] == Color.white ||
            self.userSolution.sphereColors[2] == Color.white || self.userSolution.sphereColors[3] == Color.white)
        {
            return
        }

        self.rows.append(Row(thisNumber: self.currentRow, solution: self.userSolution))
							 
        self.CheckSolution()
		
        self.currentRow = self.currentRow + 1
        
        self.ResetUserSolution()
    }
    
	private func CheckSolution()
	{
		var correctPositions: [Int] = [Int]()
		var incorrectPositions: [Int] = [Int]()
	
		for position in 1...4
		{
			if(CheckForSamePosition(position: position))
			{
				correctPositions.append(position)
			}
			else
			{
				incorrectPositions.append(position)
			}
		}
		
        print(correctPositions.count)
        
		if(correctPositions.count == 4)
		{
			print("You won")
			return
		}
	}
	
	private func CheckForSamePosition(position: Int) -> Bool
	{
        return false
        /*
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
        */
	}
	
    public func ResetUserSolution()
    {
        self.userSolution.sphereColors[0] = Color.white
        self.userSolution.sphereColors[1] = Color.white
        self.userSolution.sphereColors[2] = Color.white
        self.userSolution.sphereColors[3] = Color.white
    }
    
    public func AddColor(color: Color)
    {
        if(self.userSolution.sphereColors[0] == Color.white)
        {
            self.userSolution.sphereColors[0] = color
            return
        }
        if(self.userSolution.sphereColors[1] == Color.white)
        {
            self.userSolution.sphereColors[1] = color
            return
        }
        if(self.userSolution.sphereColors[2] == Color.white)
        {
            self.userSolution.sphereColors[2] = color
            return
        }
        if(self.userSolution.sphereColors[3] == Color.white)
        {
            self.userSolution.sphereColors[3] = color
            return
        }
    }
}

struct Row
{
    let number: Int
    
    var solution: Solution
    var answerColors: Solution
    
    init(thisNumber: Int, solution: Solution)
    {
        self.number = thisNumber
        
        self.solution = Solution(solution)
        
        self.answerColors = Solution(Color.gray)
    }
}

struct Solution
{
    var sphereColors: [Color] = [Color.white, Color.white, Color.white, Color.white]
    
    init()
    {
        
    }
    
    init(_ solution: Solution)
    {
        self.sphereColors = solution.sphereColors
    }
    
    init(_ defaultColor: Color)
    {
        self.sphereColors = [defaultColor, defaultColor, defaultColor, defaultColor]
    }
}
