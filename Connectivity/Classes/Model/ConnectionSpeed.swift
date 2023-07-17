//
//  ConnectionSpeed.swift
//  Pods
//
//  Created by Ayush Mahajan on 17/07/23.
//

import Foundation
import Network

public enum ConnectionSpeed {
    case fast
    case slow
    case poor
    case unknown
    
    static func estimatedSpeed(_ timeTaken: TimeInterval) -> Self {
        switch timeTaken {
        case 0.0...0.8:
            return .fast
        case 0.8...1.5:
            return .slow
        case 1.5...5.0:
            return .poor
        default:
            return .unknown
        }
    }
}
