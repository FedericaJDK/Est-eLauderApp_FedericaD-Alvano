//
//  EsteeLauderApp_FedericaD_AlvanoUITestsLaunchTests.swift
//  EsteeLauderApp_FedericaD'AlvanoUITests
//
//  Created by Federica D’Alvano on 6/23/22.
//

import XCTest

class EsteeLauderApp_FedericaD_AlvanoUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
