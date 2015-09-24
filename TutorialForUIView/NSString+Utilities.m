//
//  NSString+Utilities.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "NSString+Utilities.h"
#import "Car.h"

@implementation NSString (Utilities)

-(BOOL) isValidYear:(NSString*)year {
    
    if(year.length != 4) {
        return false;
    }
    
    int yearToValidate = [year intValue];
    
    if(yearToValidate < 1886) {
        return false;
    }
    else if (yearToValidate > 2020){
        return false;
    }
    else {
        return true;
    }
    
}

-(BOOL) isValidVin:(NSString*)vin {
    NSString *iChar = @"i";
    NSString *oChar = @"o";
    NSString *qChar = @"q";
    
    if(vin.length != 17)
    {
        return false;
    }
    else {
        if([vin localizedCaseInsensitiveContainsString:iChar]) {
            return false;
        }
        else if([vin localizedCaseInsensitiveContainsString:oChar]) {
            return false;
        }
        else if([vin localizedCaseInsensitiveContainsString:qChar]) {
            return false;
        }
        else {
            return true;
        }
    }
    
}
@end