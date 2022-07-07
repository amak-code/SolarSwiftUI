//
//  PlanetListView.swift
//  SolarSwiftUI
//
//  Created by antikiller on 06.07.2022.
//

import SwiftUI

struct PlanetListView: View {
    
    init() {
      UITableView.appearance().backgroundColor = .clear
    }
    
    let backgroundGradient = LinearGradient(
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    @State var viewModel = PlanetDataStore()
    
    var body: some View {
        
        
        NavigationView {
            
           ZStack {
//
                Image("galaxy")
                  .resizable()
                  .frame(maxHeight: .infinity)
                  .edgesIgnoringSafeArea(.all)
                 //.frame(height: 10)
                  .blur(radius: 30)
               
               
               //background(backgroundGradient)
               
                List {
                   
                    // Section  {
                    
                    ForEach(PlanetDataStore.planets ){ planet in
                        
                        NavigationLink {
                            
                            DetailView(planet: .constant(planet))
                            
                            
                        }label: {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                
                                HStack(alignment: .bottom, spacing: 0) {
                                    Image(planet.planetName.lowercased())
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 50, alignment: .leading)
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(planet.planetName)
                                        Text("\(planet.orderNumber)")
                                    }.padding(.trailing, 50)
                                    
                                }.padding(8)
                                
                               // Spacer()
                                //  }
                           }
                            
                        }
                            .listStyle(.plain)
                            .navigationTitle("Planets")
                            .listRowBackground(Color.clear)
                            .preferredColorScheme(.dark)
                        
                    }
                }
            }
        }
    }
        
}

struct PlanetListView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetListView()
            .preferredColorScheme(.dark)
    }
}
