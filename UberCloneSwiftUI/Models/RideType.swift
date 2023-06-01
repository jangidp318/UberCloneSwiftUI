//
//  RideType.swift
//  UberCloneSwiftUI
//
//  Created by OSlash on 28/05/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable{
    case uberX
    case blcak
    case uberXL
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .uberX: return "UberX"
        case .blcak: return "UberBlack"
        case .uberXL: return "UberXL"
        }
    }
    
    var imageName: String {
        switch self{
        case .uberX: return "uber-x"
        case .blcak: return "uber-black"
        case .uberXL: return "uber-xl"
        }
    }
    
    var baseFare: Double {
        switch self{
        case .uberX: return 5
        case .blcak: return 20
        case .uberXL: return 10
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMeters = distanceInMeters / 1600
        
        switch self{
        case .uberX: return distanceInMeters * 1.5 + baseFare
        case .blcak: return distanceInMeters * 2.0 + baseFare
        case .uberXL: return distanceInMeters * 1.75 + baseFare
        }
    }
}
