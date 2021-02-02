//
//  SwiftyUiLabelTests.swift
//  SwiftyUiLabelTests
//
//  Created by Mohammad Edrees on 1/31/21.
//

import XCTest
@testable import SwiftyUiLabel

class SwiftyUiLabelTests: XCTestCase {

    func testColorExtension() {
        XCTAssertEqual(UIColor(red: 0.5, green: 0.5, blue: 1, alpha: 0.5).hexCode(), "#7f7fff", "Hex code mismatching")
    }
    
    func testColor_hexCode() {
        XCTAssertEqual(UIColor.red.hexCode(), "#ff0000")
    }
    
    func testConvenienceInit() {
        XCTAssertEqual(UIColor(hexValues: 0xff0000), UIColor.red)
    }
    
    func testFont_fonttype() {
        let font = Font.fontKind(.Regular, size: 14.0)
        XCTAssertNotNil(font)
    }
    
    func testFont__fonttype() {
        let font = Font._fontKind(.Regular, size: 14.0)
        XCTAssertNotNil(font)
    }

}
