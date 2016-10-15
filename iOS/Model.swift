//
//  Model.swift
//  feedAmerica
//
//  Created by zach lee on 10/14/16.
//  Copyright © 2016 Team16. All rights reserved.
//

import UIKit

let Comp1 = Competition(tL: ["purple","green","red"], ptGoal: 100, Comp_Name: "Fight Hunger")
let Comp2 = Competition(tL: ["one","two","three"], ptGoal: 1500, Comp_Name: "Yes Fight")
let Comp3 = Competition(tL: ["Sales","Marketing","Human Resources"], ptGoal: 25000, Comp_Name: "Love for Children")
let Comp4 = Competition(tL: ["Manchester","Madrid","Liverpool"], ptGoal: 100, Comp_Name: "FIFA")
let Comp5 = Competition(tL: ["Lakers","Jazz","Kings"], ptGoal: 100, Comp_Name: "NBA For Hunger")

let user = User(fn: "John", ln: "Smith", e: "JohnSmith@Gmail.com", comp: [Comp1, Comp2, Comp3, Comp4, Comp5], upts: 100 )



class User {
	
	var first_name: String? = ""
	var last_name: String? = ""
	var email: String? = ""
	//var user_photo: UIImage?
	var competitions: [Competition]? = []
	var user_pts: Int = 0
	
	init(fn: String?, ln: String?, e: String?, comp: [Competition]?, upts: Int? ) {
		self.first_name = fn!
		self.last_name = ln!
		self.email = e!
		self.competitions = comp!
		self.user_pts = upts!
		
		
	}
	
	
	
	
	
	
	func setFirstName(firstName: String?) -> Void {
		self.first_name = first_name!
	}
	func setLastName(lastName: String?) -> Void {
		self.last_name = lastName!
	}
	func setEmail(newEmail: String?) -> Void {
		self.email = newEmail!
	}
//	func setUserPhoto(new_photo: UIImage?) -> Void {
//		self.user_photo = new_photo!
//	}
	func addCompetitions(newComp: Competition?) -> Void {
		self.competitions?.append(newComp!)
	}
	func addPts(points: Int?) -> Void {
		self.user_pts += points!
	}
	func getFirstName() -> String {
		return first_name!
	}
	func getLastName() -> String {
		return last_name!
	}
	func getEmail() -> String {
		return email!
	}
//	func getUserPhoto() -> UIImage {
//		return user_photo!
//	}
	func getCompetition() -> Array<Competition> {
		return competitions!
	}
	func getPts() -> Int {
		return user_pts
	}
	
	

}

class Team {
	var team_ID: String? = ""
	var user_ID_list: Array<String>?
	var team_name: String? = ""
	var team_pts: Int? = 0
	
	init() {
		
	}
	func getTeamID() -> String{
		return team_ID!
	}
	func getUserIdLst() -> Array<String>{
		return user_ID_list!
	}
	func getTeamName() -> String{
		return team_name!
	}
	func getPts() -> Int{
		return team_pts!
	}
	func setTeamID() -> String{
		return team_ID!
	}
	func setUserIdLst() -> Array<String>{
		return user_ID_list!
	}
	func setTeamName() -> String{
		return team_name!
	}
	func setPts() -> Int{
		return team_pts!
	}
	
	
}

class Competition {
	var teamList: [String?] = []
	var goal: Int?
	var comp_name: String?
	
	init(tL: Array<String>, ptGoal: Int, Comp_Name: String) {
		teamList = tL
		goal = ptGoal
		comp_name = Comp_Name
	}
	func getName()-> String{
		return comp_name!
	}
	
	
	
}


