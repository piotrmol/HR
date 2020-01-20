//
//  EmployeeFactory.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

class EmployeeFactory {
    
    static var shared = EmployeeFactory()
    
    private init() {}
    
    func createEmployee(of type: EmployeeType) -> Employee {
        switch type {
        case .worker:
            return Worker()
        case .areaManager:
            return AreaManager()
        case .departmentManager:
            return DepartmentManager()
        }
    }
    
}
