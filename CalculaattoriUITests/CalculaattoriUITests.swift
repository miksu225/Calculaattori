//
//  CalculaattoriUITests.swift
//  CalculaattoriUITests
//
//  Created by Koulutus on 22.10.2017.
//  Copyright © 2017 MikkoS. All rights reserved.
//

import XCTest



class CalculaattoriUITests: XCTestCase {
    
    var app: XCUIApplication!
    
  
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testPlusOperation() {
        
       
        
        
       let button1 = app.buttons["1"]
       let buttonPlus = app.buttons["+"]
       let button5 = app.buttons["5"]
       let buttonEqual = app.buttons["="]
      
        
        XCTAssertTrue(button1.exists)
        button1.tap()
        XCTAssert(app.staticTexts["1"].exists)
        
        XCTAssertTrue(buttonPlus.exists)
        buttonPlus.tap()
        
        XCTAssertTrue(button5.exists)
        button5.tap()
        XCTAssert(app.staticTexts["5"].exists)
        
        XCTAssertTrue(buttonEqual.exists)
        buttonEqual.tap()
        XCTAssert(app.staticTexts["6.0"].exists)

        
    }
    
    func testDivideOperation() {
        let button1 = app.buttons["1"]
        let button0 = app.buttons["0"]
        let buttonDivide = app.buttons["/"]
        let button3 = app.buttons["3"]
        let buttonEqual = app.buttons["="]
        
        
        XCTAssertTrue(button1.exists)
        button1.tap()
        XCTAssert(app.staticTexts["1"].exists)
        
        XCTAssertTrue(button0.exists)
        button0.tap()
        XCTAssert(app.staticTexts["10"].exists)
        
        XCTAssertTrue(buttonDivide.exists)
        buttonDivide.tap()
        
        XCTAssertTrue(button3.exists)
        button3.tap()
        XCTAssert(app.staticTexts["3"].exists)
        
        XCTAssertTrue(buttonEqual.exists)
        buttonEqual.tap()
        XCTAssert(app.staticTexts["3.33333333333333"].exists)
        
    }
    
    func testMultiplyingWIthDecimals() {
        let button1 = app.buttons["1"]
        let buttonDot = app.buttons["."]
        let buttonMultiply = app.buttons["*"]
        let button5 = app.buttons["5"]
        let buttonEqual = app.buttons["="]
        
        
        
        XCTAssertTrue(button1.exists)
        button1.tap()
        XCTAssert(app.staticTexts["1"].exists)
        
        XCTAssertTrue(buttonDot.exists)
        buttonDot.tap()
        XCTAssert(app.staticTexts["1."].exists)
        
        XCTAssertTrue(button5.exists)
        button5.tap()
        XCTAssert(app.staticTexts["1.5"].exists)
        
        XCTAssertTrue(buttonMultiply.exists)
        buttonMultiply.tap()
        
        button5.tap()
        
        XCTAssertTrue(buttonEqual.exists)
        buttonEqual.tap()
        XCTAssert(app.staticTexts["7.5"].exists)
    }
    
}
