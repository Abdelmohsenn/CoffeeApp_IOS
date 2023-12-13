//
//  MenuViewController.swift
//  Coffee App
//
//  
//
import Foundation
import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var MenuTable: UITableView!

    private var menuData = [MenuModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuTable.delegate = self
        MenuTable.dataSource = self
        getData()
    }
    
    private func getData(){
        menuData.append(.init("Espresso", "Espresso" , "small" , 0, 0))
//        menuData.append(.init("Espresso", "Espresso" , "medium" , 0))
//        menuData.append(.init("Espresso", "Espresso" , "large" , 0))
        
        
        menuData.append(.init("Cappuccino", "Cappuccino", "small" , 0, 0))
//        menuData.append(.init("Cappuccino", "Cappuccino", "medium" , 0))
//        menuData.append(.init("Cappuccino", "Cappuccino", "large" , 0))
        
        
        menuData.append(.init("Latte", "Latte", "small" , 0, 0))
//        menuData.append(.init("Latte", "Latte", "medium" , 0))
//        menuData.append(.init("Latte", "Latte", "large" , 0))
        
        
        menuData.append(.init("Macchiato", "Macchiato", "small" , 0, 0))
//        menuData.append(.init("Macchiato", "Macchiato", "medium" , 0))
//        menuData.append(.init("Macchiato", "Macchiato", "large" , 0))
        
        
        menuData.append(.init("Mocha", "Mocha", "small" , 0, 0))
//        menuData.append(.init("Mocha", "Mocha", "medium" , 0))
//        menuData.append(.init("Mocha", "Mocha", "large" , 0))
        

    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        cell.configCell(data: menuData[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapeped")
        NavigateToCart(data: self.menuData[indexPath.row])
    }
    func NavigateToCart (data : MenuModel){
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = Storyboard.instantiateViewController(withIdentifier: "UIcartViewController") as! UIcartViewController
        viewController.Object = data
        self.present(viewController, animated: false, completion: nil)
    }
    
    
    
    
}


