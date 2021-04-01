//
//  OpenWeatherCTTests.swift
//  OpenWeatherCTTests
//
//  Created by Mr.Ved on 4/1/21.
//

import XCTest
@testable import OpenWeatherCT

class CityNameViewModelTests: XCTestCase {
    var viewModel: CityNameViewModel?
    
    override func setUp() {
        viewModel = CityNameViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
    }

    func test_ScreenTitle() {
        XCTAssertEqual(viewModel?.screenTitle, "City Name")
    }

}

