//
//  TestingunitUITests.swift
//  TestingunitUITests
//
//  Created by BLT0009-MACMI on 10/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import XCTest

class TestingunitUITests: XCTestCase {
    
    
    
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
       continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
           }
    
    
        func testExample() {
                let app = XCUIApplication()
            let textField = app.otherElements.containingType(.Button, identifier:"Submit").childrenMatchingType(.TextField).element
            textField.tap()
            app.keys["r"].tap()
            app.keys["e"].tap()
            textField.typeText("revathi")
            
            let submitButton = app.buttons["Submit"]
            submitButton.tap()
            
            let okButton = app.alerts["Alert"].collectionViews.buttons["OK"]
            okButton.tap()
            textField.tap()
            textField.typeText("@gmail")
             let moreNumbersKey = app.keys["more, numbers"]
            moreNumbersKey.tap()
            moreNumbersKey.tap()
            textField.typeText(".com")
            submitButton.tap()
            okButton.tap()
            // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
