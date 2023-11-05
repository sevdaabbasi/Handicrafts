//
//  SgnUpView.swift
//  Handicrafts
//
//  Created by Sevda Abbasi on 5.11.2023.
//

import SwiftUI

struct SignUpView: View {
   
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var signUpVM = MainViewModel.shared;
    
   
    
    var body: some View {
        ZStack {
           
            Color (.white).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack{
                    
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    
                    Text("enter your emails and password")
                        .foregroundColor(Color.black.opacity(0.4))
                        .padding(.bottom, 50)
                    
                    LineTextField(title:"Email", placholder:"Enter your email address",txt:$signUpVM.txtEmail, keyboardType: .emailAddress)
                        .padding(.bottom,10)
                        
                    
                    LineSecureField(title:"Password", placholder:"Enter your password",txt:$signUpVM.txtPassword, isShowPassword: $signUpVM.isShowePassword)
                       // .padding(.bottom,10)
                    Button{
                        
                    }label:{
                        Text("Forgot Password?")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .foregroundColor(.black)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
               
                   
                   // PrimaryButton(title: "Log In"){
                     //   signUpVM.serviceCallLogin()
                   // }
                        
                    
                    HStack{
                        Text("Don't have an account?")
                            
                        Text("Sign up")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .foregroundColor(Color("Color1"))
                    }
                    
                }
                Spacer()
                Divider()
                Spacer()
                Text(" You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color("Color1"))
                Spacer()
            }
            .padding()
        }
        
    }
       
}
   

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


