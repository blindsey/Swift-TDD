//
//  TDDTests.swift
//  TDDTests
//
//  Created by Ben Lindsey on 7/21/14.
//  Copyright (c) 2014 Ben Lindsey. All rights reserved.
//

import UIKit
import Nimble

extension KIFTestCase {
    func tester(_ file : String = __FILE__, _ line : Int = __LINE__) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}

class TDDTests: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFahrenheit() {
        tester().enterText("32", intoViewWithAccessibilityLabel:"Degrees Fahrenheit")
        let field = tester().waitForViewWithAccessibilityLabel("Degrees Centigrade") as UITextField
        expect(field.text).to(equal(""))
        tester().tapViewWithAccessibilityLabel("Convert")
        expect(field.text).to(equal("0.0"))
    }

    func testCentigrade() {
        tester().enterText("100", intoViewWithAccessibilityLabel:"Degrees Centigrade")
        let field = tester().waitForViewWithAccessibilityLabel("Degrees Fahrenheit") as UITextField
        expect(field.text).to(equal(""))
        tester().tapViewWithAccessibilityLabel("Convert")
        expect(field.text).to(equal("212.0"))
    }
}
