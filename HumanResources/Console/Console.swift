//
//  Console.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

class Console {
    
    func printMenu() {
        let msg = """
            Hello in HR Program, choose option:
            1) Add new employee
            2) List all employees
            3) Exit
        """
        print(msg)
    }
    
    func listCreationOptions() {
        let options = """
            Choose employee position
            1) Worker
            2) Department Manager
            3) Area Manager
        """
        print(options)
    }
    
    func askForFullName() {
        let msg = "Type name and surname separated by single space: "
        print(msg)
    }
    
    func askForSalary() {
        let msg = "Type salary: "
        print(msg)
    }
    
    func printEmployeeCreationSuccess() {
        print("Employee created!")
    }
    
    func printError() {
        let msg = "Some error occurred"
        print(msg)
    }
    
    func pintEmployeeInfo(for employee: Employee) {
        let msg = "Employee: \(employee.getFullName()), position: \(type(of: employee)), salary: \(employee.getSalary())"
        print(msg)
    }
    
}
