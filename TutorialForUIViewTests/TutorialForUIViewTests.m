//
//  TutorialForUIViewTests.m
//  TutorialForUIViewTests
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Car.h"
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


-(void) testCarYear1234Invalid {
    
    Car *car = [[Car alloc] init];
    car.year = @"1234";
    
    XCTAssertFalse([car.year isValidYear:car.year]);
}

-(void) testCarYear2015Valid {
    Car *car = [[Car alloc] init];
    car.year = @"2015";
    XCTAssertTrue([car.year isValidYear:car.year]);
}


-(void) testCarYearStringInvalid {
    Car *car = [[Car alloc] init];
    car.year = @"fake year";
    XCTAssertFalse([car.year isValidYear:car.year]);
}

-(void) testCarFromTheFutureInvalid {
    Car *car = [[Car alloc] init];
    car.year = @"3000";
    XCTAssertFalse([car.year isValidYear:car.year]);
}

-(void) testForVINLengthNot17 {
    Car *car = [[Car alloc] init];
    car.vin = @"hgtfrk";
    XCTAssertFalse([car.vin isValidVin:car.vin]);
}

-(void) testForValidVINContainsAllAs {
    Car *car = [[Car alloc] init];
    car.vin = @"aaaaaaaaaaaaaaaaa";
    XCTAssertTrue([car.vin isValidVin:car.vin]);
}

-(void) testForInvalidVINContainsAllOs {
    Car *car = [[Car alloc] init];
    car.vin = @"ooooooooooooooooo";
    XCTAssertFalse([car.vin isValidVin:car.vin]);
}

-(void) testForValidVINLegitVin {
    Car *car = [[Car alloc] init];
    car.vin = @"A1GB6HNK9KLBVCXZ1";
    XCTAssertTrue([car.vin isValidVin:car.vin]);
}

@end
