//
//  NSArray+Utilities.m
//  TutorialForUIView
//
//  Created by Robert Vo on 11/19/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "NSArray+Utilities.h"

@implementation NSArray (Utilities)

+ (NSArray*) retrieveDataFromNSUserDefaults {
    NSMutableArray *objectArray = [NSMutableArray new];
    NSUserDefaults *currentDefaults = [NSUserDefaults standardUserDefaults];
    NSData *dataRepresentingSavedArray = [currentDefaults objectForKey:@"savedArray"];
    if (dataRepresentingSavedArray != nil)
    {
        NSArray *oldSavedArray = [NSKeyedUnarchiver unarchiveObjectWithData: dataRepresentingSavedArray];
        if (oldSavedArray != nil)
            objectArray = [[NSMutableArray alloc] initWithArray:oldSavedArray];
        else
            objectArray = [[NSMutableArray alloc] init];
    }
    return objectArray;
}


@end
