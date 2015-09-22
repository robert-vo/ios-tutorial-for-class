//
//  LoggedInViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoggedInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *WelcomeLabel;
- (IBAction)LogOutButton:(id)sender;

@end
