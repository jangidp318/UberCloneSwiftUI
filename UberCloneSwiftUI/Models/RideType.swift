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
}
