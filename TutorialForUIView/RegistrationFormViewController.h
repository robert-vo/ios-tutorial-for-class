//
//  HomeViewController.h
//  TutorialForUIView
//
//  Created by Robert Vo on 9/22/15.
//  Copyright © 2015 RobertVo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

@interface RegistrationFormViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *FirstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *LastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (weak, nonatomic) IBOutlet UITextField *VerifyPasswordTextField;
@property (weak, nonatomic) IBOutlet UIButton *SubmitButton;
@property (weak, nonatomic) IBOutlet UIButton *ResetButton;
@property User *UserToLogIn;
- (IBAction)ResetButtonTouched:(id)sender;
- (IBAction)SubmitButtonTouched:(id)sender;
- (IBAction)PasswordTextFieldTouched:(id)sender;
- (IBAction)VerifyPasswordTextFieldTouched:(id)sender;

@end
