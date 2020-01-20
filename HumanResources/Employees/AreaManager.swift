//
//  AreaManager.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

class AreaManager: Employee {
    
    private var firstName: String?
    private var lastName: String?
    private var salary: Float?
    private let bonus: Float = 0.25
    
    func getFullName() -> String {
        guard let firstName = firstName, let lastName = lastName else {
            return "Manager has no name!"
        }
        return "Area Manager: \(firstName) \(lastName). He is the boss."
    }
    
    func getSalary() -> Float {
        guard let salary = salary else {
            return 0
        }
        return salary + salary * bonus
    }
    
    func set(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func set(salary: Float) {
        self.salary = salary
    }
    
}
