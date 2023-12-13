//
//  ViewController.swift
//  Coffee App
//
//
//

import Foundation
import UIKit

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif




class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    var someUser: User?
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        someUser?.email = emailField.text!
        someUser?.password = passField.text!
        
        
        let semaphore = DispatchSemaphore (value: 0)

        let parameters = "email=\(someUser?.email ?? " ")&password=\(someUser?.password ?? " ")"
        let postData =  parameters.data(using: .utf8)

        var request = URLRequest(url: URL(string: "https://coffee-eg,herokuapp.com/api/login")!,timeoutInterval: Double.infinity)
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
        
         // emailField.delegate = self
         // passField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


