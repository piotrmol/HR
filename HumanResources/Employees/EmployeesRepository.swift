//
//  EmployeesRepository.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

class EmployeesRepository {
    
    private(set) var employees = [Employee]()
    private var tempEmployee: Employee?
    private let console = Console()
    
    func listEmployees() {
        employees.forEach { console.pintEmployeeInfo(for: $0) }
    }
    
    func createEmployee() {
        console.listCreationOptions()
        guard let chosenOption = readLine(), let option = Int(chosenOption) else {
            console.printError()
            return
        }
        guard let type = EmployeeType(rawValue: option) else {
            console.printError()
            return
        }
        createEmployee(of: type)
    }
    
    func createEmployee(of type: EmployeeType) {
        let employee = EmployeeFactory.shared.createEmployee(of: type)
        console.askForFullName()
        
        guard let name = readLine() else {
            console.printError()
            return
        }
        set(name: name, for: employee)
        
        console.askForSalary()
        guard let givenSalary = readLine(), let salary = Float(givenSalary) else {
            console.printError()
            return
        }
        set(salary: salary, for: employee)
        
        if isValid(employee: employee){
            employees.append(employee)
            console.printEmployeeCreationSuccess()
        }
    }
    
    private func set(name: String, for employee: Employee) {
        let nameSplited = name.split(separator: " ").map { String($0) }
        guard nameSplited.count == 2 else {
            console.printError()
            return
        }
        
        if let employee = employee as? Worker {
            employee.set(firstName: nameSplited[0], lastName: nameSplited[1])
        }
        
        if let employee = employee as? DepartmentManager {
            employee.set(firstName: nameSplited[0], lastName: nameSplited[1])
        }
        
        if let employee = employee as? AreaManager {
            employee.set(firstName: nameSplited[0], lastName: nameSplited[1])
        }
    }
    
    private func set(salary: Float, for employee: Employee) {
        if let employee = employee as? Worker {
            employee.set(salary: salary)
        }
        
        if let employee = employee as? DepartmentManager {
            employee.set(salary: salary)
        }
        
        if let employee = employee as? AreaManager {
            employee.set(salary: salary)
        }
    }
    
    //TODO:- Create validation method
    private func isValid(employee: Employee) -> Bool {
        return true
    }
    
}

private extension String {
    
    func indexOf(char: Character) -> Int? {
        return firstIndex(of: char)?.utf16Offset(in: self)
    }
    
}
