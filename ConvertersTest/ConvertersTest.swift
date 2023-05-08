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
    

    func test_convert10_returns1080(){
        let actual = sut.convertEuroToUSD(euro: "10")
        let expect = "$10.80"
        
        XCTAssertEqual(actual, expect)
    }
    
    func test_convertNagative10_returnsErrorMessage(){
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expect = "Please enter a positive number."
        
        XCTAssertEqual(actual, expect)
    }

    

}
