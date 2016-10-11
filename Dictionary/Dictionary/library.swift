//
//  library.swift
//  Dictionary
//
//  Created by Rose Bailey on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Library {
    var bookDictionary:[Int: Book] = [:]
    
    init() {
        populateBookDictionary()
    }
    
    func getTitleById(id: Int) -> String {
        
        let book: Book? = bookDictionary[id]
        
        return book?.title ?? "Not Found"
    }
    
    func populateBookDictionary() {
        var book: Book
        
        book = Book(id: 1, title: "Green Eggs and Ham", checkedIn: true)
        bookDictionary[1] = book
        
        book = Book(id: 2, title: "Where the Red Fern Grows", checkedIn: true)
        bookDictionary[2] = book

        book = Book(id: 3, title: "Old Yeller", checkedIn: true)
        bookDictionary[3] = book
    }

    func checkIn(id:Int) -> String {
        if let book = bookDictionary[id] {
            book.checkedIn = true
            return "Success"
        } else {
            return "Failure"
        }
    
    func checkOut(id:Int) -> String {
            if let book = bookDictionary[id] {
                book.checkedOut = true
                return "Sorry"
            } else {
                return "Check back"
            }

            }
        }
    }

    
    










