//
//  User.swift
//  Coffee App
//
//
//
import Foundation
import UIKit






struct User: Codable{
    
    var email, username, password: String
    
    init(_ e: String , _ u: String , _ p: String){
        email = e
        username = u
        password = p
    }
    
}



    
   
