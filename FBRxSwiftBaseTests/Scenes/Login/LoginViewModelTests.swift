//
// LoginViewModelTests.swift
// FBRxSwiftBase
//
// Created by Hanh Vu on 10/15/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import FBRxSwiftBase
import XCTest
import RxSwift
import RxBlocking

final class LoginViewModelTests: XCTestCase {
    private var viewModel: LoginViewModel!
    private var navigator: LoginNavigatorMock!
    private var useCase: LoginUseCaseMock!
    private var disposeBag: DisposeBag!

    override func setUp() {
        super.setUp()
        navigator = LoginNavigatorMock()
        useCase = LoginUseCaseMock()
        viewModel = LoginViewModel(navigator: navigator, useCase: useCase)
        disposeBag = DisposeBag()
    }
}