//
//  Employee.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

protocol Employee {
    
    func getFullName() -> String
    func getSalary() -> Float
    
}

enum EmployeeType: Int {
    case worker = 1, departmentManager, areaManager
}
