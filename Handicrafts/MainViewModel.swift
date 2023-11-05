//
//  MainViewModel.swift
//  Handicrafts
//
//  Created by Sevda Abbasi on 5.11.2023.
//

import SwiftUI

class MainViewModel: ObservableObject{
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = " "
    @Published var txtPassword: String = " "
    @Published var isShowePassword: Bool = false
    
    @Published var showError = false
    @Published var errorMessage = ""
}
