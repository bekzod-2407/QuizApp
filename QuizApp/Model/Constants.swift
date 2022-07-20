//
//  Constants.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import UIKit

enum Images {
    case frame
    case mainBgBubbles
    
    var image: UIImage? {
        switch self {
        case .frame: return UIImage(named: "frame")
        case .mainBgBubbles: return UIImage(named: "mainBgBubbles")
        }
    }
}

enum Colors {
    case mainColor
    case labelColor
    case buttonColor
    case greenColor
    case redColor
    
    var color: UIColor? {
        switch self {
        case .mainColor: return UIColor(named:"mainColor" )
        case .labelColor: return UIColor(named: "labelColor")
        case .buttonColor: return UIColor(named:"buttonColor" )
        case .greenColor: return UIColor(named: "greenColor")
        case .redColor: return UIColor(named:"redColor" )
        }
    }
    
    
}
