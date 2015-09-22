//
//  NSString+Utilities.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "NSString+Utilities.h"

@implementation NSString (Utilities)

-(BOOL) isValidEmail {
    NSString *expression = @"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[AZa-z]{2,4}$";
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: expression options:
                                  NSRegularExpressionCaseInsensitive error: &error];
    NSTextCheckingResult *match = [regex firstMatchInString: self options: 0 range: NSMakeRange(0, [self length])];
    
    if (match)
        return true;
    else
        return false;
}

- (NSString*) getDateTime {
    NSDateFormatter *formatter;
    NSString        *dateString;
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy HH:mm"];
    
    dateString = [formatter stringFromDate:[NSDate date]];    
    NSLog(@"Current data: %@", dateString);
    return dateString;
}

@end
