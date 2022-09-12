//
//  UIcartViewController.swift
//  Coffee App
//
//  Created by muhammad abdelmohsen on 9/12/22.
//

import UIKit

class UIcartViewController: UIViewController {

    @IBOutlet weak var MenuImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuImage.image = UIImage(named: Object!.image)

        

        // Do any additional setup after loading the view.
    }
    var Object : MenuModel?

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
