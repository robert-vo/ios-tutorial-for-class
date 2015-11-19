//
//  User.m
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import "User.h"

@implementation User

@synthesize FirstName, LastName, Email, Password, DateCreated;

-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        self.FirstName = [aDecoder decodeObjectForKey:@"FirstName"];
        self.LastName = [aDecoder decodeObjectForKey:@"LastName"];
        self.Email = [aDecoder decodeObjectForKey:@"Email"];
        self.Password = [aDecoder decodeObjectForKey:@"Password"];
        self.DateCreated = [aDecoder decodeObjectForKey:@"DateCreated"];

    }
    return self;
}

-(void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:FirstName forKey:@"FirstName"];
    [aCoder encodeObject:LastName forKey:@"LastName"];
    [aCoder encodeObject:Email forKey:@"Email"];
    [aCoder encodeObject:Password forKey:@"Password"];
    [aCoder encodeObject:DateCreated forKey:@"DateCreated"];

}

@end
