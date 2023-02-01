//
//  ViewController.swift
//  CoolCars
//
//  Created by Dad's 6,1 on 2/1/23.
//

import UIKit

class CoolCarsViewController: UIViewController {
    
    var vehicle: Vehicle!

    @IBOutlet weak var goToCoolCarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vehicle = Vehicle(desiredVehicle: "Lady Bug", make: "Bugatti", model: "Lady Bug", year: "2023")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnCarsTapped(_ sender: Any) {
        performSegue(withIdentifier: "SelectedCarsSegue", sender: self)
        
    }


    @IBAction func onLadyBugTapped(_ sender: Any) {
        
        vehicle.desiredVehicle = "Lady Bug Bugatti Selected"
        vehicle.make = "Bugatti"
        vehicle.model = "Lady Bug"
        vehicle.year = "2023"
        goToCoolCarButton.isEnabled = true
    }
    
        
    
    @IBAction func onDivoTapped(_ sender: Any) {
        
        vehicle.desiredVehicle = "Divo Bugatti Selected"
        vehicle.make = "Bugatti"
        vehicle.model = "Divo"
        vehicle.year = "2023"
        goToCoolCarButton.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedCarsVC = segue.destination as? SelectedCarsViewController {
            selectedCarsVC.vehicle = vehicle
        }
    }
    
}

