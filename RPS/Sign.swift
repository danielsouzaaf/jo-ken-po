//
//  Sign.swift
//  RPS
//
//  Created by Daniel Souza Affonso Ferreira on 09/10/17.
//  Copyright © 2017 Daniel Souza Affonso Ferreira. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
        
    } else if sign == 1 {
        return .paper
        
    } else {
        return .scissors
        
    }
}


enum Sign {
    case rock, paper, scissors
    
    var representation: String {
        switch self {
        case .rock: return "👊🏿"
        case .paper: return "✋🏿"
        case .scissors: return "✌🏿"
        }
    }
    
    func result(appSign: Sign) -> GameState {
        if self.representation == "👊🏿"  && appSign.representation == "✋🏿"
            || self.representation == "✋🏿" && appSign.representation == "✌🏿"
            || self.representation == "✌🏿" && appSign.representation == "👊🏿"{
            return GameState.lose
        }
        else if self.representation == "✋🏿" && appSign.representation == "👊🏿"
            || self.representation == "✌🏿" && appSign.representation == "✋🏿"
            || self.representation == "👊🏿" && appSign.representation == "✌🏿"{
            return GameState.win
        }
        else{
            return GameState.draw
        }
    }
}
