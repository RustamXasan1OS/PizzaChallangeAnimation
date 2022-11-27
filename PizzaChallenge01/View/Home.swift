//
//  Home.swift
//  PizzaChallenge01
//
//  Created by Rustam Xasan on 26/11/22.
//

import SwiftUI

struct Home: View {
    
    //03
    @State var pizzas: [Pizza] = [
        
        Pizza(breadName: "Bread_1"),
        Pizza(breadName: "Bread_2"),
        Pizza(breadName: "Bread_3"),
        Pizza(breadName: "Bread_4"),
        Pizza(breadName: "Bread_5"),

    ]
    
    //04 !
    @State var currentPizza: Pizza = .init(breadName: "Bread_1")
     
    //06 @
    @State var currentSize: PizzaSize = .medium
    
    
    var body: some View {
     
        VStack{
            
            //Nav Bar...
            //01 !
            HStack{
                
                Button{
                    
                }label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    Image(systemName: "suit.heart.fill")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                
            }
            
            //02 !
            .overlay(
            
            Text("Pizza")
                .font(.title2.bold())
                .foregroundColor(.black)
            )
            .padding()
            
            // Pizza View...
            
            GeometryReader{proxy in
                
                let __ =  proxy.size
                
                ZStack{
                    
                    Image("Plate")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal,30)
                        .padding(.vertical)
                    
                    // Show Brend in swipeble Tab...
                    
                    //04 @
                    TabView(selection: $currentPizza) {
                        
                        ForEach(pizzas) { pizza in
                            Image(pizza.breadName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(40)
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    
                    
                }
                //02 @
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
            }
            //02 @
            .frame(height: 300)
            
            // Price...
            //05
            Text("17$")
                .font(.title.bold())
                .foregroundColor(.black)
                .padding(.top, 10)
            
            // Pizza Size ...
            //06^^
            
            
        }
        //01 @
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
              
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//To iterate in ForEach...
//06 !
enum PizzaSize: String, CaseIterable {
    
    case small = "S"
    case medium = "M"
    case large = "L"
}
