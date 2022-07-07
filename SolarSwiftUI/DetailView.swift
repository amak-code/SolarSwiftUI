//
//  DetailView.swift
//  SolarSwiftUI
//
//  Created by antikiller on 06.07.2022.
//

import SwiftUI

struct DetailView: View {
    
  @Binding var planet: Planet
    
    var body: some View {
        ZStack {
          Image("galaxy")
            .resizable()
            .frame(maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)

          VStack {
            VStack(alignment: .leading, spacing: 30) {
              Text(planet.planetName)
                .font(.largeTitle)
                .fontWeight(.bold)
              Image(planet.imageName)
              Text(
                "Maximum Distance From Sun: \(String(format: "%.1f", planet.millionKMsFromSun)) ^6km")
              Text("Day length in Earth Days: \(String(format: "%.1f", planet.dayLength)) Days")
              Text("Planet Diameter: \( planet.diameter) km")
            }
            Spacer()
          }
          .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
         planet: .constant(
            Planet(
                planetName: "Earth", diameter: 10, dayLength: 10, millionKMFromSun: 10, orderNumber: 1))
        )
        .preferredColorScheme(.dark)
    }
}
