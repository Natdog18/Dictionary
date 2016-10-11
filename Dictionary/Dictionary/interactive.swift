//
//  interactive.swift
//  Dictionary
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation
class Interactive {
    private var done: Bool = false
    private var currentInPut: String = "checkin"
    private var io = Io()
    private var library = Library()
    private var checkIn = checkIn()
    private var checkOut = checkOut()
    
    func go(){
        
        while !done {
            
            //Ask the user for input right here.
            io.writeMessage("\nInput?")
            currentInPut = io.getInput()
            let selection = currentInPut
            switch selection{
            
            case "Help":
                print("\nFor help and other information here is a list of available actions for the library: \n\nList: There is a lists the books currently existing in the library. \nListavaible:")
            
            case "q":
                done = true
                
            case "co":
                checkOut()
                
            case "ci":
                checkIn()
           
                
            default:
                print("Inter a valid choice")
            }
        }
        print ("Exiting....")
        
        return
    }
  
   



