//
//  File.swift
//  
//
//  Created by Florian Kostenzer on 01.11.19.
//

import Foundation

public struct Marker: Codable, Hashable, Drawable {
    public var url: String
    public var fallbackUrl: String
    public var height: UInt16
    public var width: UInt16
    public var latitude: Double
    public var longitude: Double
    public var xOffset: Int16=0
    public var yOffset: Int16=0
    
    public var hashString: String {
        return "M\(hashValue)"
    }
    
    enum CodingKeys: String, CodingKey {
        case url, height, width, latitude, longitude, xOffset = "x_offset", yOffset = "y_offset"
    }
    
}
