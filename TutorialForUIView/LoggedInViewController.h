//
//  LoggedInViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "HomeViewController.h"

@interface LoggedInViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *WelcomeLabel;
@property User *loggedInUser;
- (IBAction)LogOutButton:(id)sender;

@end
