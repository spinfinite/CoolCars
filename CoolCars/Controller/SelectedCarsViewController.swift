//
//  SelectedCarsViewController.swift
//  CoolCars
//
//  Created by Dad's 6,1 on 2/22/23.
//

import UIKit

class SelectedCarsViewController: UIViewController {
    
    var vehicle: Vehicle!
    
    @IBOutlet var vehicleImageLabel: UIImage!
    @IBOutlet var vehicleDetailsLabel: UILabel!

    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //vehicleDetailsLabel.text = vehicleInformation[0]
        
        
        print(vehicle.desiredVehicle)
        print(vehicle.make)
        print(vehicle.model)
        print(vehicle.year)
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
