//
//  TutorialForUIViewTests.m
//  TutorialForUIViewTests
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Utilities.h"


@interface TutorialForUIViewTests : XCTestCase

@end

@implementation TutorialForUIViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)canaryTest {
    XCTAssertTrue(true);
}

- (void)testValidEmail {
        NSString *emailToVerify = @"robert@robert.com";
        XCTAssertTrue(emailToVerify.isValidEmail);
}

- (void)testInvalidEmail {
        NSString *invalidEmail = @"1234";
        XCTAssertFalse(invalidEmail.isValidEmail);
}

@end
