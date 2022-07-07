//
//  PlanetDataStore.swift
//  SolarSwiftUI
//
//  Created by antikiller on 06.07.2022.
//

import Foundation

class PlanetDataStore {

  static var planets: [Planet] {

      let mercury = Planet(planetName: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMFromSun: 57.9, orderNumber: 1 )

      let venus = Planet(planetName: "Venus", diameter: 12104, dayLength: 2802, millionKMFromSun: 108.2, orderNumber: 2)

      let earth = Planet(planetName: "Earth", diameter: 12756, dayLength: 24, millionKMFromSun: 149.6, orderNumber: 3)

      let jupiter = Planet(planetName: "Jupiter", diameter: 142984, dayLength: 9.9, millionKMFromSun: 778.6, orderNumber: 5)

      let saturn = Planet(planetName: "Saturn", diameter: 120536, dayLength: 10.7, millionKMFromSun: 1433.5, orderNumber: 6)

      let uranus = Planet(planetName: "Uranus", diameter: 51118, dayLength: 17.2, millionKMFromSun: 2872.5, orderNumber: 7)

      let neptune = Planet(planetName: "Neptune", diameter: 49528, dayLength: 16.1, millionKMFromSun: 4495.1, orderNumber: 8)

      let pluto = Planet(planetName: "Pluto", diameter: 2370, dayLength: 153.3, millionKMFromSun: 5906.4, orderNumber: 9)
      
      let mars = Planet(planetName: "Mars", diameter: 6792, dayLength: 24.7, millionKMFromSun: 227.9, orderNumber: 4)

    return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
  }
}
