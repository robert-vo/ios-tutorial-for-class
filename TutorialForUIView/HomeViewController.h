//
//  HomeViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 11/19/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface HomeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
@property User *userToPass;

- (IBAction)LoginButton:(id)sender;
- (void) displayUserNotFound;

@end
