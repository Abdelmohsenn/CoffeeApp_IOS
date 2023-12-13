//
//  RegViewController.swift
//  Coffee App
//
//  Created by Hisham Tarek on 14/09/2022.
//
import Foundation
import UIKit
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif




class RegViewController: UIViewController {
   
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func RegTapped(_ sender: UIButton) {
        
        
        someUser?.email = emailField.text!
        someUser?.username = usernameField.text!
        someUser?.password = passwordField.text!
        
        
        

        let semaphore = DispatchSemaphore (value: 0)

        let parameters = "{\r\n    \"email\":\"\(someUser?.email ?? " ")\",\r\n    \"password\":\"\(someUser?.password ?? " ")\",\r\n    \"name\":\"\(someUser?.username ?? " ")\"\r\n}"
        let postData = parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://coffee-eg,herokuapp.com/api/user/save")!,timeoutInterval: Double.infinity)
        request.httpMethod = "POST"
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
          }
          print(String(data: data, encoding: .utf8)!)
          semaphore.signal()
        }

        task.resume()
        semaphore.wait()
        
       
       
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self
        usernameField.delegate = self
        passwordField.delegate = self
         
        
        
        // Do any additional setup after loading the view.
    
    }
    
    
    
    
    var someUser : User?
    
    
    

    
    
    
    
}




    extension RegViewController : UITextFieldDelegate{
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
             
            textField.resignFirstResponder()
            
            return true
        }
        
        
        
        
        
        
        
        
    }







