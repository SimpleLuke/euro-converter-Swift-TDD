//
//  ConvertersTest.swift
//  ConvertersTest
//
//  Created by Luke Lai on 08/05/2023.
//

import XCTest

final class ConvertersTest: XCTestCase {

    func test_convert10_returns1080(){
        let sut = Converters() // sut => system under testing
        
        let actual = sut.convertEuroToUSD(euro: "10")
        let expect = "$10.80"
        
        XCTAssertEqual(actual, expect)
    }
    
    func test_convertNagative10_returnsErrorMessage(){
        let sut = Converters() // sut => system under testing
        
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expect = "Please enter a positive number."
        
        XCTAssertEqual(actual, expect)
    }

    

}
