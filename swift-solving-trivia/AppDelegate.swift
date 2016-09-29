//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func solveTrivia(trivia: [String : String]) -> String {
        
        
        var stateCapitalUnmatch = ""
        
        for (state, capital) in trivia {
            
            
            //Lower cased state and capital and replacing all spaces
            
            let lowState = state.lowercased().replacingOccurrences(of: " ", with: "")
            let lowCapital = capital.lowercased().replacingOccurrences(of: " ", with: "")
            
            
            
            //Putting the lowercased States into a set of charcters
            
            let stateCharacterSet = NSCharacterSet(charactersIn: lowState)
            
            
            //Comparing lowercased Capital and lowercased States character, if there isn't
            //any similarities which returns nil, then return state
            
            if lowCapital.rangeOfCharacter(from: stateCharacterSet as CharacterSet) == nil {
        
                stateCapitalUnmatch = state
                
            }
        }
            return stateCapitalUnmatch
        
    }

}
