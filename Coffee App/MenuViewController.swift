//
//  MenuViewController.swift
//  Coffee App
//
//  Created by muhammad abdelmohsen on 9/11/22.
//

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
        menuData.append(.init(image: "Espresso", title: "Espresso" , price: 40))
        menuData.append(.init(image: "Cappuccino", title: "Cappuccino", price: 40))
        menuData.append(.init(image: "Latte", title: "Latte", price: 40))
        menuData.append(.init(image: "Macchiato", title: "Macchiato", price: 40))
        menuData.append(.init(image: "Mocha", title: "Mocha", price: 40))




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
        self.present(viewController, animated: false, completion: nil)
    }
}


