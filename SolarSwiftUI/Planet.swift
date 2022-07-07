//
//  Planet.swift
//  SolarSwiftUI
//
//  Created by antikiller on 06.07.2022.
//

import Foundation

class Planet: Identifiable {
    
    var id = UUID()
    var planetName: String
    var imageName: String
    var diameter: Int
    var dayLength: Float
    var millionKMsFromSun: Float
    var orderNumber: Int
    
    init(planetName:String, diameter: Int, dayLength: Float, millionKMFromSun: Float, orderNumber: Int){
        self.planetName = planetName
        self.imageName = planetName.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMFromSun
        self.orderNumber = orderNumber
    }
    
}
