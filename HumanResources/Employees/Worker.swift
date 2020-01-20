//
//  Worker.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation


class Worker: Employee {
    
    private var firstName: String?
    private var lastName: String?
    private var salary: Float?
    
    func getFullName() -> String {
        guard let firstName = firstName, let lastName = lastName else {
            return "Worker has no name!"
        }
        return "Worker: \(firstName) \(lastName)"
    }
    
    func getSalary() -> Float {
        guard let salary = salary else {
            return 0
        }
        return salary
    }
    
    func set(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func set(salary: Float) {
        self.salary = salary
    }
    
}
