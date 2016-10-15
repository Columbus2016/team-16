//
//  CompetitionViewController.swift
//  feedAmerica
//
//  Created by zach lee on 10/15/16.
//  Copyright © 2016 Team16. All rights reserved.
//

import UIKit

class CompetitionViewController: ViewController, UITableViewDataSource, UITableViewDelegate  {
	@IBOutlet weak var CompTableView: UITableView!
	// add to tableview variable
//	let Comp1 = Competition(tL: ["purple","green","red"], ptGoal: 100, Comp_Name: "Fight Hunger")
//	let Comp2 = Competition(tL: ["one","two","three"], ptGoal: 1500, Comp_Name: "Yes Fight")
//	let Comp3 = Competition(tL: ["Sales","Marketing","Human Resources"], ptGoal: 25000, Comp_Name: "Love for Children")
//	let Comp4 = Competition(tL: ["Manchester","Madrid","Liverpool"], ptGoal: 100, Comp_Name: "FIFA")
//	let Comp5 = Competition(tL: ["Lakers","Jazz","Kings"], ptGoal: 100, Comp_Name: "NBA For Hunger")
//	var compArray: [Competition] = [Comp1, Comp2, Comp3, Comp4, Comp5]
	let add: User = User(fn: "John", ln: "Smith", e: "JohnSmith@Gmail.com", comp: [Competition(tL: ["Manchester","Madrid","Liverpool"], ptGoal: 100, Comp_Name: "FIFA"), Competition(tL: ["Lakers","Jazz","Kings"], ptGoal: 100, Comp_Name: "NBA For Hunger"), Competition(tL: ["Sales","Marketing","Human Resources"], ptGoal: 25000, Comp_Name: "Love"), Competition(tL: ["one","two","three"], ptGoal: 1500, Comp_Name: "Yes Fight"), Competition(tL: ["purple","green","red"], ptGoal: 100, Comp_Name: "Fight Hunger")], upts: 100 )
	
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		CompTableView.dataSource = self
		CompTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return add.getCompetition().count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "reuseID", for: indexPath)
		
		cell.textLabel?.text = add.getCompetition()[(indexPath as NSIndexPath).row].getName()
		
		return cell
	}
	
	
//	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//		if editingStyle == UITableViewCellEditingStyle.delete{
//			add.vac.remove(at: indexPath.row)
//			tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
//		}
//	}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
