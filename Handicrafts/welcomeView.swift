//
//  welcomeView.swift
//  Handicrafts
//
//  Created by Sevda Abbasi on 5.11.2023.
//


import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("Color2")
                VStack {
                    
                    
                    Image("elSanatlari")
                        
                    
                    
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
                   
     
                    NavigationLink {
                        //SignInScreenView()
                    } label: {
                        PrimaryButton(title: "Sıgn In")
                        
                            .padding()
                    }
                    
                    
                    
                    HStack {
                        Text("New around here? ")
                        NavigationLink{
                           // SignUpScreenView()
                        }label:{
                            Text("Sıgn Up")
                                .font(.title2)
                                .foregroundColor(Color("Color1"))
                        }
                        
                        
                        
                    }
                   

                }
                
                
                
                .padding()
            }
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
        NavigationView{
            WelcomeView()
        }
       
    }
}
