//
//  sampleForTestUITests.swift
//  sampleForTestUITests
//
//  Created by AnujSharma on 11/20/17.
//  Copyright © 2017 AnujSharma. All rights reserved.
//

import XCTest

class sampleForTestUITests: XCTestCase {
        
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
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["welcomeLabel"]/*[[".staticTexts[\"Welcom I am run by a test Bot\"]",".staticTexts[\"welcomeLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        sleep(2)
        app/*@START_MENU_TOKEN@*/.buttons["nextButton"]/*[[".buttons[\"NEXT\"]",".buttons[\"nextButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["secondLabel"]/*[[".staticTexts[\"This is the second screen\"]",".staticTexts[\"secondLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        sleep(2)
        app/*@START_MENU_TOKEN@*/.buttons["previousButton"]/*[[".buttons[\"PREVIOUS\"]",".buttons[\"previousButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

                
    }
    
}
