//
//  User.h
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property NSString *FirstName;
@property NSString *LastName;
@property NSString *Email;
@property NSString *Password;
@property NSString *DateCreated;

@end
