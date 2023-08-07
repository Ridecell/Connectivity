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
    case disconnected
    case unknown
    
    static func estimatedSpeed(_ timeTaken: TimeInterval) -> Self {
        switch timeTaken {
        case 0.0...0.5:
            return .fast
        case 0.5...1.0:
            return .slow
        case 1.0...5.0:
            return .poor
        case 5.0...:
            return .disconnected
        default:
            return .unknown
        }
    }
}
