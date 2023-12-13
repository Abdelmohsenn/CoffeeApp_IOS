//
//  UIcartViewController.swift
//  Coffee App
//
//  
//

import Foundation
import UIKit

class UIcartViewController: UIViewController {

    @IBOutlet weak var MenuImage: UIImageView!
    @IBOutlet weak var CoffeeType: UILabel!
    @IBOutlet weak var PriceCoffee: UILabel!
    @IBOutlet weak var CupsCoffee: UILabel!
    @IBOutlet weak var typeTotalPrice: UILabel!
    
    
    
    
    
   
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func StepperPressed(_ sender: UIStepper) {
        Object?.count = Int(sender.value)//.description
        updatePrices()
        configCart()
      //  CupsCoffee.text = Int(sender.value).description
    }
    
    
    
    
    @IBAction func DoSmall(_ sender: UIButton) {
        Object?.size = "small"
        updatePrices()
        configCart()
    }
    @IBAction func DoMedium(_ sender: UIButton) {
        Object?.size = "medium"
        updatePrices()
        configCart()
    }
    @IBAction func DoLarge(_ sender: UIButton) {
        Object?.size = "large"
        updatePrices()
        configCart()
    }
    
    
  
    @IBAction func Sug0(_ sender: UIButton) {
        Object?.sugar = 0
        updatePrices()
        configCart()
    }
    @IBAction func Sug1(_ sender: UIButton) {
        Object?.sugar = 1
        updatePrices()
        configCart()
    }
    @IBAction func Sug2(_ sender: UIButton) {
        Object?.sugar = 2
        updatePrices()
        configCart()
    }
    @IBAction func Sug3(_ sender: UIButton) {
        Object?.sugar = 3
       // Object?.self = .init(Object?.image! , Object?.title , Object?.size , Object?.sugar , Object?.count)
        //typeTotalPrice.text = String(Object?.priceAfter ?? 0)
        updatePrices()
        configCart()
    }
    
    
    
    
    
    
    var Object : MenuModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
       configCart()
    
        // Do any additional setup after loading the view.
    }
    
    
    
    
    func configCart() {
        MenuImage.image = UIImage(named: Object?.image ?? " ")
        CoffeeType.text = Object?.title ?? " "
        PriceCoffee.text = String (Object?.priceBefore ?? 0)
        CupsCoffee.text = String (Object?.count ?? 0)
        typeTotalPrice.text = String (Object?.priceAfter ?? 0)
        
      //  smallButton.setImage(UIImage(named: Object?.image ?? " "), for: .normal)
       
    }


    
    func updatePrices() {
            
        if (Object?.size == "small")
        { Object?.priceBefore = 30 }
        else if (Object?.size == "medium")
        { Object?.priceBefore = 40 }
      else //if (Object?.size == "large")
        { Object?.priceBefore = 50 }

        let tempInt: Int? = (Object?.count ?? 0) * ( (Object?.priceBefore ?? 0) + (Object?.sugar ?? 0) * 2 )
        Object?.priceAfter = tempInt ?? 0
    
        
        
        
      return
        
      
  }
    
    
    
   
    
    
    
    
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */





