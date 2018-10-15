//
// LoginViewControllerTests.swift
// FBRxSwiftBase
//
// Created by Hanh Vu on 10/15/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import FBRxSwiftBase
import XCTest
import Reusable

final class LoginViewControllerTests: XCTestCase {
    var viewController: LoginViewController!

    override func setUp() {
        super.setUp()
        viewController = LoginViewController.instantiate()
    }

    func test_ibOutlets() {
        _ = viewController.view
        XCTAssert(true)
//        XCTAssertNotNil(viewController.tableView)
    }
}