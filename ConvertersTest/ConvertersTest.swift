//
//  ConvertersTest.swift
//  ConvertersTest
//
//  Created by Luke Lai on 08/05/2023.
//

import XCTest

final class ConvertersTest: XCTestCase {
    private var sut:Converters!
    
    override func setUpWithError() throws {
        sut = Converters() // sut => system under testing
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    // Create a simple conversion with a positive number
    func test_convert10_returns1080(){
        let actual = sut.convertEuroToUSD(euro: "10")
        let expect = "$10.80"
        
        XCTAssertEqual(actual, expect)
    }
    
    // Negative number returns an error message
    func test_convertNagative10_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expect = "Please enter a positive number."
        
        XCTAssertEqual(actual, expect)
    }

    // Empty input returns an error message
    func test_convertEmptyString_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "")
        let expect = "Please enter a positive number."
        
        XCTAssertEqual(actual, expect)
    }
    
    // Invalid input returns an error message
    func test_convertInvalidInput_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "Hello world")
        let expect = "Please enter a positive number."
        
        XCTAssertEqual(actual, expect)
    }
    
    // Convert a decimal returns a decimal result
    func test_convertDecimal1050_returnsDecimal1134(){
        let actual = sut.convertEuroToUSD(euro: "10.50")
        let expect = "$11.34"
        
        XCTAssertEqual(actual, expect)
    }
    
    // Convert a high number returns an error message
    func test_convert1000000_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "1000000")
        let expect = "Value too big to convert."
        
        XCTAssertEqual(actual, expect)
    }
    

}
