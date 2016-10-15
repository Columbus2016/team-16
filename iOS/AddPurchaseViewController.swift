//
//  AddPurchaseViewController.swift
//  feedAmerica
//
// the purpose of this controller is to allow the user to take a picture of a product and add it along with the purchase cost
// this will then add points to their current competitions and user points
//  Created by zach lee on 10/15/16.
//  Copyright © 2016 Team16. All rights reserved.
//

import UIKit
import CoreData
class AddPurchaseViewController: ViewController {
	// buttons to access camera and core data functionality
	@IBOutlet weak var openCameraButton: UIButton!
	@IBOutlet weak var addPictureButton: UIButton!
	@IBOutlet weak var costLabel: UILabel!
	@IBOutlet weak var addPointsButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
		

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
