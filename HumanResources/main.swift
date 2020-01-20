//
//  main.swift
//  HumanResources
//
//  Created by Piotr Mol on 18/01/2020.
//  Copyright © 2020 Piotr Mol. All rights reserved.
//

import Foundation

private let console = Console()
private let employeesRepo = EmployeesRepository()

func start() {
    var option = -1
    
    while option != 3 {
        console.printMenu()
        let choice = readLine() ?? ""
        option = Int(choice) ?? -1
        
        switch option {
        case 1:
            employeesRepo.createEmployee()
        case 2:
            employeesRepo.listEmployees()
        default:
            continue
        }
        
    }
}

start()
